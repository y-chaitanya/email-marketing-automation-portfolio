# Marketing Automation Portfolio
## Chaitanya Yarlagadda | State Fund ITS I | May 2026
---
## About This Portfolio

I combine a Computer Science Engineering foundation with recent hands-on marketing automation work. This portfolio is built in May 2026 to demonstrate practical skills across the full marketing automation technical stack. From SQL audience segmentation through HTML email construction to CRM API integration and campaign analytics.

Every project here is real. Every file is something I built, ran, and can explain in detail.

---
## Certifications Supporting This Work

| Certification | Issuer | Date |
|---|---|---|
| Enrolled Agent (EA) License | IRS — Federal Credential | April 2026 |
| Google Analytics 4 (GA4) | Google Skillshop | May 2026 — 90% |
| HubSpot Marketing Hub Software | HubSpot Academy | May 2026 - 88% |
| HubSpot Email Marketing | HubSpot Academy | May 2026 — 83% |

---
## Project 1 — HubSpot End-to-End Marketing Automation Campaign

**Skills:** HubSpot Marketing Hub · EBA Workflow · HTML Email · UTM Parameters · GA4 · Looker Studio · Deliverability Validation

### What I Built

A complete automated email campaign in HubSpot Marketing Hub — from contact import to tracked performance output — mirroring the daily workflow of a Marketing Automation Specialist.

### What I Did

- Imported 8 employer contacts into HubSpot and created a static list — State Fund Portfolio Active Employers
- Built a 3-step branching workflow using EBA logic — Enrollment trigger activates on list membership, welcome email deploys immediately, 48-hour delay fires, then an If/Then branch routes contacts who opened into a nurture sequence and contacts who did not open into a re-engagement path
- Constructed the welcome email inside HubSpot's custom HTML editor — not the drag-and-drop builder — using nested table structures and inline CSS for rendering consistency across Outlook, Gmail, and Apple Mail
- Added UTM parameters to every CTA link — source, medium, campaign — and confirmed attribution data populated in GA4 real-time view within seconds of test send.
- Validated deliverability using Mail-Tester and confirmed SPF and DKIM authentication before activation.
- Connected GA4 property to Looker Studio and built a campaign performance dashboard tracking sessions by UTM source and conversion events

### Files In This Project

| File | What It Shows |
|---|---|
| 01-contact-list-8-active-employers.png | HubSpot CRM — 8 contacts imported |
| 02-welcome-email-html-build.png | HTML email built in custom editor |
| 03-enrollment-trigger-segment-membership.png | Workflow enrollment trigger configured |
| 04-eba-workflow-complete-branch-logic.png | Full 3-step branching workflow |
| 06-ga-property-setup.png | GA4 property and web stream |
| 07-utm-parameters-live-in-url.png | UTM tags confirmed in live URL |
| 09-looker-studio-dashboard.png | Looker Studio campaign dashboard |

---

## Project 2 — Technical Code Portfolio

**Skills:** HTML Email Code · Inline CSS · UTM Architecture · SQL · REST API · JSON · Postman · CRM Data Structures

### What I Built

A set of production quality code files demonstrating the technical layer underneath every marketing automation campaign — the SQL that segments the audience, the HTML that constructs the email, and the JSON that documents how CRM API data is structured.

### What I Did

**HTML Email Template**
Hand-coded a complete State Fund welcome email using table-based layout and inline CSS — not a visual editor. Includes a HubSpot personalization token, UTM-tagged CTA button, and CAN-SPAM compliant unsubscribe footer.

**SQL Segmentation Queries**
Wrote three production SQL queries for State Fund employer scenarios:
- Query 1 — Welcome campaign segment — new employers who have never logged in — uses SELECT, WHERE, JOIN
- Query 2 — Re-engagement segment — no claims filed, no email opens in 60 days — uses GROUP BY, HAVING
- Query 3 — Campaign performance summary — open rates by industry and city — uses COUNT, AVG, ROUND

**HubSpot CRM API JSON**
Documented a sample HubSpot CRM API contact response showing the full JSON structure — contact properties, workflow enrollment context, UTM attribution fields, and API metadata. Validated REST API calls using Postman with a 200 OK status confirmed on a live GET request.

### Files In This Project

| File | What It Shows |
|---|---|
| state-fund-welcome-email.html | Production HTML email — tables, inline CSS, UTM CTA |
| state-fund-segmentation.sql | 3 SQL queries — SELECT WHERE JOIN GROUP BY HAVING |
| hubspot-api-contact-response.json | HubSpot CRM API JSON structure documented |
| 08-api-postman-rest-call-200-ok.png | Live Postman GET request — 200 OK confirmed |

---

## Project 3 — Email Campaign SQL Analysis

**Skills:** SQL SELECT · WHERE · JOIN · GROUP BY · HAVING · Aggregate Functions · Data Analysis · Campaign Insights

### What I Built

A real SQL analysis project using an actual email campaign dataset — demonstrating the segmentation and reporting queries a Marketing Automation Specialist writes to build target audiences and measure campaign performance.

### What I Did

- Downloaded a real email campaign dataset containing email-level data — subject line scores, customer location, campaign type, past communication counts, word counts, and link counts
- Loaded the dataset into SQLite using sqliteonline.com
- Wrote three SQL queries demonstrating progressive skill complexity

**Query 1 — High-Value Email Segment**
Finds emails with strong subject scores sent to engaged contacts using SELECT, WHERE, AND, and ORDER BY. Identifies the best-performing emails for a nurture campaign.

**Query 2 — Campaign Analysis by Location**
Groups emails by campaign type and customer location using GROUP BY, COUNT, AVG, and ROUND. Shows which audience segments are largest and how subject performance varies across them.

**Query 3 — High-Engagement Segment Filter**
Uses GROUP BY with HAVING to keep only locations with strong average engagement above a threshold. Demonstrates the key distinction — WHERE filters rows before grouping, HAVING filters groups after aggregation.

### Key Insight From The Data

Location G is the largest audience at 15,645 emails but has a lower average subject score (1.08) than smaller locations D and B (1.13). Recommendation: A/B test subject lines for the G segment — the highest-volume audience has the most room for engagement improvement, so a small lift there affects more contacts than anywhere else.

### Files In This Project

| File | What It Shows |
|---|---|
| email-campaign-analysis.sql | 3 queries — SELECT WHERE JOIN GROUP BY HAVING |
| README.md | Query explanations and key insight |

---

## Addon to Project 1 — Looker Studio Campaign Dashboard

**Skills:** Google Looker Studio · GA4 Integration · Dashboard Design · Campaign Attribution · UTM Reporting

### What I Built

A live campaign performance dashboard in Google Looker Studio connected to my GA4 property — demonstrating the analytics and reporting layer of a marketing automation workflow.

### What I Did

- Connected GA4 property to Looker Studio
- Built a campaign performance dashboard with multiple tiles tracking active users and traffic by source
- Named the dashboard State Fund Campaign Performance Dashboard — matching the reporting format a Digital Experience team uses for weekly review

### Files In This Project

| File | What It Shows |
|---|---|
| 09-looker-studio-dashboard.png | Live Looker Studio dashboard connected to GA4 |

---

## The Full Technical Stack Demonstrated

| Skill | Evidence |
|---|---|
| HubSpot workflow automation | Project 1 — EBA workflow screenshots |
| HTML email — tables + inline CSS | Project 2 — state-fund-welcome-email.html |
| UTM parameter architecture | Project 2 — CTA link in HTML file |
| HubSpot personalization tokens | Project 2 — contact.firstname token |
| CAN-SPAM compliance | Project 2 — unsubscribe token in footer |
| SQL SELECT WHERE AND | Project 2 + Project 3 — Query 1 |
| SQL GROUP BY HAVING | Project 2 + Project 3 — Query 2 and 3 |
| JSON data structures | Project 2 — hubspot-api-contact-response.json |
| REST API endpoint knowledge | Project 2 — API metadata in JSON |
| Postman API testing | Project 2 — 200 OK screenshot |
| GA4 analytics | Project 1 — GA4 property setup |
| Looker Studio dashboard | Project 1 — live dashboard screenshot |
| Deliverability validation | Project 1 — Mail-Tester confirmed |
| SPF DKIM DMARC | Project 1 — authentication validated |

---

