-- ============================================================
-- EMAIL CAMPAIGN ANALYSIS — SQL SEGMENTATION PROJECT
-- Author: Chaitanya Yarlagadda
-- Dataset: Email Campaign Management (real campaign data)
-- Tool: SQLite via sqliteonline.com
-- Purpose: Audience segmentation and campaign analysis for
--          marketing automation planning
-- ============================================================


-- ─────────────────────────────────────────────────────────────
-- QUERY 1: HIGH-VALUE EMAIL SEGMENT
-- Find emails with strong subject lines sent to engaged contacts.
-- Skills: SELECT, WHERE, AND, ORDER BY
-- Use: Identify best-performing emails for a nurture campaign.
-- ─────────────────────────────────────────────────────────────

SELECT
    email_id,
    email_campaign_t,
    subject_hotness_,
    total_past_commu,
    customer_locatio
FROM Email_compaign
WHERE subject_hotness_ >= 2.0
  AND total_past_commu >= 20
ORDER BY subject_hotness_ DESC;


-- ─────────────────────────────────────────────────────────────
-- QUERY 2: CAMPAIGN ANALYSIS BY LOCATION
-- Count emails grouped by campaign type and customer location,
-- with the average subject score for each group.
-- Skills: GROUP BY, COUNT, AVG, ROUND
-- Use: Identify which segments are largest for campaign planning.
-- ─────────────────────────────────────────────────────────────

SELECT
    email_campaign_t,
    customer_locatio,
    COUNT(email_id)                  AS total_emails,
    ROUND(AVG(subject_hotness_), 2)  AS avg_subject_score
FROM Email_compaign
GROUP BY email_campaign_t, customer_locatio
ORDER BY total_emails DESC;


-- ─────────────────────────────────────────────────────────────
-- QUERY 3: HIGH-ENGAGEMENT SEGMENT FILTER
-- Find customer locations with strong average engagement —
-- groups are filtered AFTER aggregation using HAVING.
-- Skills: GROUP BY, HAVING, multiple aggregates
-- Use: Target locations with proven high subject performance.
-- ─────────────────────────────────────────────────────────────

SELECT
    customer_locatio,
    COUNT(email_id)                  AS total_emails,
    ROUND(AVG(subject_hotness_), 2)  AS avg_subject_score,
    ROUND(AVG(total_past_commu), 1)  AS avg_past_contact
FROM Email_compaign
GROUP BY customer_locatio
HAVING AVG(subject_hotness_) > 1.0
   AND COUNT(email_id) > 50
ORDER BY avg_subject_score DESC;

-- ============================================================
-- KEY INSIGHT FROM QUERY 3:
-- Location G is the largest audience (15,645 emails) but has a
-- lower average subject score (1.08) than smaller locations
-- D and B (1.13). Recommendation: A/B test subject lines for
-- the G segment to lift engagement on the highest-volume audience.
--
-- WHERE filters rows before grouping.
-- HAVING filters groups after aggregation.
-- That distinction is the core of SQL segmentation reporting.
-- ============================================================
