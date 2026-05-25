Project 3 — Email Campaign SQL Analysis
Overview

This project uses real email campaign test data to demonstrate SQL audience segmentation and
campaign analysis and the same query work a Marketing Automation Specialist performs to
build target audiences and measure campaign performance.
The dataset is a real email campaign management dataset containing email-level data:
subject line engagement scores, customer location, campaign type, past communication
counts, word counts, and link/image counts.

Tools Used
SQLite via sqliteonline.com
Real test email campaign dataset (CSV import)

The Three Queries

Query 1 . High Value Email Segment

Skills: SELECT, WHERE, AND, ORDER BY
Finds emails with a subject hotness score of 2.0 or higher that were sent to contacts with 20
or more past communications. This isolates the best performing emails sent to already engaged
contacts and the segment a marketer would study to design a nurture campaign.

Query 2 . Campaign Analysis by Location

Skills: GROUP BY, COUNT, AVG, ROUND
Groups emails by campaign type and customer location, counting the emails in each group
and calculating the average subject score. This shows which audience segments are largest
and how subject performance varies across them.

Query 3 . High Engagement Segment Filter

Skills: GROUP BY, HAVING, multiple aggregates
Groups emails by customer location and uses a HAVING clause to keep only locations with
an average subject score above 1.0 and more than 50 emails. This demonstrates the
difference between WHERE (filters rows) and HAVING (filters groups after aggregation).

Key Insight
Query 3 revealed that location G is the largest audience at 15,645 emails, but its average
subject score (1.08) is lower than smaller locations D and B (1.13).
The recommendation: A/B test subject lines for the G segment. The highest volume
audience has the most room for engagement improvement and a small lift in subject
performance there affects more contacts than anywhere else.

Connection to Marketing Automation
Every query here maps to a real marketing automation task:
Query 1 builds a target segment for workflow enrollment
Query 2 supports campaign planning and reporting
Query 3 identifies which segments need optimization

This is the SQL layer underneath every automated email campaign by segmenting the
audience before the workflow ever runs.

SQL Skills Demonstrated
SELECT ·WHERE · AND · ORDER BY · GROUP BY · COUNT · AVG · ROUND · HAVING ·
multiple aggregate functions · aliasing with AS
