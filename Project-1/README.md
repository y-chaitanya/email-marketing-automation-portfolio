## Project 1 — HubSpot End-to-End Marketing Automation Campaign

Built a complete end-to-end automated email campaign in HubSpot Marketing demonstrating full automation lifecycle management.

### What Was Built
- Imported a segmented contact list of 8 employer contacts
- Configured enrollment trigger based on list segment membership
- Built a 3-step branching workflow (EBA Architecture):
- E: Enrollment trigger fires on list membership
- B: 48-hour delay then If/Then branch on email open behavior
- A: Nurture path for openers / Re-engagement path for non-openers
- Constructed HTML email template with inline CSS formatting
- Configured UTM parameters on all CTA links for GA4 attribution
- Set up GA4 web stream for campaign performance tracking

### Screenshots
- [Contact list with 8 active employer contacts](./01-contact-list-8-active-employers.png)
- [Welcome email HTML build with UTM CTA button](./02-Welcome-Email-HtMlBuild.png)
- [Enrollment trigger set to State Fund Portfolio segment](./03-enrollment-trigger-segment-membership.png)
- [Complete EBA workflow with branch logic visible](./04-EBA-Workflow-Complete-Branch-Logic.png)
- [Welcome email rendered preview](./05-Welcome-Email-Preview-HTML-Rendered.png)
- [GA4 property and web stream configuration](./06-GAproperty-setup.png)
- [UTM parameters visible in URL confirming tracking setup](./07-UTM-parameters-Live-in-URL.png)

### Tools Used
* HubSpot Marketing Hub
* Google Analytics 4
* HTML/CSS
* UTM Parameter Architecture

### Certifications Supporting This Build
- Google Analytics 4 — Google Skillshop 2026
- HubSpot Marketing Hub — HubSpot Academy 2026
- Enrolled Agent (EA) License — IRS April 2026
