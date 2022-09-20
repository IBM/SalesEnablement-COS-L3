{{offering.name}} (COS) is a highly available, durable, and secure platform for storing unstructured data. Unstructured data (sometimes called binary or "blob" data) refers to data that is not highly structured in the manner of a database. Object storage is the most efficient way to store PDFs, media files, database backups, disk images, or even large structured datasets.

The goal of this demonstration guide is to illustrate how to perform a demonstration of COS that addresses a specific pain point many clients have: management of regulated data. The scenario shown in this guide is based upon a Regulated Archive Demonstration originally created by the COS product management team. Learn more about this scenario <a href="https://ibm.seismic.com/Link/Content/DCGCjHR8Jp2GqGTM3bc3bcR3P4Wd" target="_blank">here</a> in Seismic in the **IBM Regulated Archive** entry of **The Seller Essentials** section. Note, the COS integration with Security Compliance Center is changing and may be going away. Ignore that aspect of the solution described in the above documents. Security Compliance Center is not used in this demonstration guide.

![](_attachments/COS-rg-seismic.png)

!!! Important
    All users of this demonstration guide should have a working knowledge of the IBM COS offering. While not a pre-requisite for the {{learningplan.name}}, it is recommended that all users complete the IBM Cloud Object Storage Level 2 badge:

    - IBM LINK TO L2
    - Business Partner LINK TO L2

**In this demonstration environment, full access to the IBM Cloud account is NOT provided.** IBM Cloud user identifications (IDs) will be restricted to specific capabilities. The IBM Technology Zone utilized in this demonstration guide is shared by all users. Permission to create or modify COS service instances, COS buckets, Key Protect instances, etc. is not provided! Additionally, expiration and retention periods are set in days rather than months are years which would be more typical in a real-life regulated archive solution. These restrictions are in place to minimize costs and to provide an easy-to-use, pre-built environment for this learning activity and that can be leveraged for general client demonstrations on very short notice.

Since the Technology Zone environment used in this demonstration guide is shared and pre-built, several activities are simulated through videos and click through (click-thru) demonstrations. These include Parts 2 through 6 and the Part 9. It is important to note that these activities are most likely ones that would be completed prior to a client demonstration to save time. Parts 7 and 8 are hands-on activities where users will perform tasks directly associated with the regulated archive demonstration including uploading data to COS and managing retention of the data including creating legal holds.

The image below is a high level illustration of the regulated archive workflow and the components of the solution: COS, IBM Key Protect, and IBM Cloud Activity Tracker.

![](_attachments/COSL3-architecture.png)

Using the above diagram, in this demonstration guide, **Step 1 - Classify data sets** is not performed. Rather it is assumed clients will best understand their data requirements and based upon those requirements and will specify the configurations set in **Step 2 - Create regulated data archive**.

**Step 2 - Create regulated data archive** aligns with Parts 1 thru 6 of the demonstration script. In these Parts, videos and click-thru demonstrations are provided that **show** how all the IBM Cloud components of this demonstration were created and configured. This includes:

- Part 2 - Create a COS service
- Part 3 - Create a Key Protect service and root key:
- Part 4 - Create an service authorization between COS and KeyProtect
- Part 5 - Create an Activity Tracker service:
- Part 6 - Create a COS bucket:

Each of the above Parts include an introduction that will describe each component, its function, and the configurations used for the demonstration.

**Step 3 through Step 7** in the diagram above aligns with Part 6 and Part 7 of the demonstration script. These Parts will use the IBM Cloud Portal and COS command line interfaces (CLIs) to **do** activities including:

- ingest data into COS
- specify object-specific retention durations
- place legal holds on data
- restore data
- attempt to delete data from COS to validate retention policies and legal holds are honored

Additionally, IBM Cloud Activity Tracker will be used to perform mock audit activities.

- Part 7 - Create COS objects
- Part 8 - Using COS Command Line Interfaces

Time to get started. Proceed to Part 2 to watch and practice how a COS service is created.
