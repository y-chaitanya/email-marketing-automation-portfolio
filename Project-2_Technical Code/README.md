
# Project 2 — Technical Code Portfolio
---

## Overview

This project demonstrates hands on technical skills across the full marketing automation stack. From SQL audience segmentation through HTML email construction to CRM API integration and JSON data handling.

Every file uses a real State Fund scenario. Everything is built to reflect an actual marketing automation workflow.

---

## Files In This Project

### 1. `state-fund-welcome-email.html`
**Skills demonstrated:** HTML email construction · Inline CSS · Table-based layout · UTM parameter integration · HubSpot personalization tokens · CAN-SPAM compliance

A complete production ready HTML welcome email built for State Fund's employer onboarding campaign. Key technical decisions:
- Table-based layout for cross client rendering compatibility (Outlook, Gmail, Apple Mail)
- All CSS written inline, no external stylesheets because email clients strip them
- UTM parameters embedded in CTA button link for GA4 attribution tracking
- HubSpot personalization token `{{contact.firstname}}` for dynamic name insertion
- `{{unsubscribe_link}}` token in footer — CAN-SPAM legal requirement
- Max-width 600px container — mobile responsive

---

### 2. `state-fund-segmentation.sql`
**Skills demonstrated:** SQL SELECT · WHERE · JOIN · GROUP BY · HAVING · DATEADD · Conditional aggregation · Audience segmentation logic

Three production quality SQL queries written for State Fund's employer database:

| Query | Purpose | Workflow Connection |
|-------|---------|-------------------|
| Query 1 | Welcome segment — new employers never logged in | Feeds EBA enrollment trigger |
| Query 2 | Re-engagement segment — no claims, no email opens 60 days | Identifies re-engagement branch contacts |
| Query 3 | Campaign performance by industry and city | Powers Looker Studio dashboard |

Each query maps directly to a stage in the HubSpot EBA workflow — demonstrating how SQL segmentation feeds automation platform logic.

---

### 3. `hubspot-api-contact-response.json`
**Skills demonstrated:** JSON data structure literacy · REST API response parsing · CRM data architecture · HubSpot API endpoint knowledge · Postman testing

A documented sample JSON response from the HubSpot CRM Contacts API showing:
- Contact properties structure - firstname, email, lifecycle stage, UTM attribution
- Workflow context — which EBA workflow the contact is enrolled in, branch result
- UTM tracking fields — source, medium, campaign connecting to GA4
- API metadata — endpoint, auth method, status code, response time

This file demonstrates understanding of how CRM data flows through API endpoints and how JSON responses are structured for integration work.

---

## The Full Technical Stack Demonstrated

| Skill | Evidence |
|-------|---------|
| HTML email — tables + inline CSS | state-fund-welcome-email.html |
| UTM parameter architecture | CTA link in HTML file |
| HubSpot personalization tokens | `{{contact.firstname}}` in HTML |
| CAN-SPAM compliance | Unsubscribe token in footer |
| SQL SELECT WHERE JOIN | Query 1 and Query 2 |
| SQL GROUP BY HAVING | Query 3 |
| Behavioral segmentation logic | All three queries |
| JSON data structure | hubspot-api-contact-response.json |
| REST API endpoint knowledge | API metadata in JSON file |
| CRM data architecture | Contact properties in JSON |
| EBA workflow integration | Cross-file references throughout |
| GA4 attribution | UTM fields in JSON + HTML |

---

## Connection to Project 1

Project 1 (screenshots) shows the HubSpot platform build — the workflow, the contacts, the email, the GA4 setup.

Project 2 (code) shows the technical layer underneath — the SQL that segments the audience, the HTML that constructs the email, and the JSON that documents how the CRM API returns contact data.

Together they demonstrate the complete marketing automation technical stack from data layer to delivery layer.

---

## Certifications Supporting This Work
- Google Analytics 4 — Google Skillshop — May 2026
- HubSpot Marketing Hub Software — HubSpot Academy — May 2026
- HubSpot Email Marketing — HubSpot Academy — May 2026
- Enrolled Agent (EA) — IRS — April 2026
