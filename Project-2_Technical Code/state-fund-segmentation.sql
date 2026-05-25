-- ============================================================
-- STATE FUND EMPLOYER SEGMENTATION QUERIES
-- Author: Chaitanya Yarlagadda
-- Purpose: Marketing automation audience segmentation
-- Platform: HubSpot Marketing Hub + SQL Server
-- ============================================================


-- ─────────────────────────────────────────────────────────────
-- QUERY 1: WELCOME CAMPAIGN SEGMENT
-- Find all active employers who registered in the last 90 days
-- and have not yet accessed their online account.
-- Use: Enroll in welcome onboarding workflow (EBA trigger)
-- ─────────────────────────────────────────────────────────────

SELECT
    e.employer_id,
    e.company_name,
    e.contact_email,
    e.contact_firstname,
    e.city,
    e.signup_date,
    a.last_login_date
FROM
    employers e
JOIN
    accounts a ON e.employer_id = a.employer_id
WHERE
    e.signup_date >= DATEADD(DAY, -90, GETDATE())   -- registered in last 90 days
    AND e.account_status = 'active'                  -- account is active
    AND a.last_login_date IS NULL                    -- never logged in yet
ORDER BY
    e.signup_date DESC;


-- ─────────────────────────────────────────────────────────────
-- QUERY 2: RE-ENGAGEMENT SEGMENT
-- Find employers in San Diego who have not filed any claims
-- and have not opened an email in the last 60 days.
-- Use: Route into re-engagement branch of EBA workflow
-- ─────────────────────────────────────────────────────────────

SELECT
    e.employer_id,
    e.company_name,
    e.contact_email,
    e.city,
    COUNT(c.claim_id)        AS total_claims,
    MAX(em.email_open_date)  AS last_email_open
FROM
    employers e
LEFT JOIN
    claims c  ON e.employer_id = c.employer_id
LEFT JOIN
    email_engagement em ON e.employer_id = em.employer_id
WHERE
    e.city = 'San Diego'
    AND e.account_status = 'active'
GROUP BY
    e.employer_id,
    e.company_name,
    e.contact_email,
    e.city
HAVING
    COUNT(c.claim_id) = 0                                        -- no claims filed
    AND (MAX(em.email_open_date) < DATEADD(DAY, -60, GETDATE()) -- no opens in 60 days
         OR MAX(em.email_open_date) IS NULL);                    -- or never opened


-- ─────────────────────────────────────────────────────────────
-- QUERY 3: CAMPAIGN PERFORMANCE SUMMARY
-- Count active employers by industry group and city
-- to identify highest-engagement segments for targeting.
-- Use: Looker Studio dashboard — campaign planning report
-- ─────────────────────────────────────────────────────────────

SELECT
    e.industry_group,
    e.city,
    COUNT(DISTINCT e.employer_id)                    AS total_employers,
    SUM(CASE WHEN em.email_opened = 1 THEN 1 END)   AS emails_opened,
    SUM(CASE WHEN em.cta_clicked  = 1 THEN 1 END)   AS cta_clicks,
    ROUND(
        100.0 * SUM(CASE WHEN em.email_opened = 1 THEN 1 END)
              / NULLIF(COUNT(DISTINCT e.employer_id), 0),
        2
    )                                                AS open_rate_pct
FROM
    employers e
LEFT JOIN
    email_engagement em ON e.employer_id = em.employer_id
WHERE
    e.account_status = 'active'
GROUP BY
    e.industry_group,
    e.city
ORDER BY
    open_rate_pct DESC,
    total_employers  DESC;

-- ============================================================
-- SEGMENTATION LOGIC NOTES
-- Query 1 → Feeds HubSpot enrollment trigger (E in EBA)
-- Query 2 → Identifies re-engagement branch contacts (B in EBA)
-- Query 3 → Powers Looker Studio campaign dashboard (GA4 + SQL)
-- All queries use: SELECT, WHERE, JOIN, GROUP BY, HAVING
-- ============================================================
