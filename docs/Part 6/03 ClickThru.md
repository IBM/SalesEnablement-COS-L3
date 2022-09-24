Use the click-thru demonstration below to practice creating a **Bucket**. The click-thru demonstration corresponds to the video from the previous chapter. Refer to the video for talking points if the click-thru demonstration is utilized with clients.

Note, fields that require a text entry (e.g. service name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the **play button** ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-COS-L3/includes/CreateBucket/index.html" target ="_blank">Create a COS Bucket</a>

2. Click **Storage** under **Resource summary** on the IBM Cloud Portal Dashboard.
3. Click **{{COS.serviceInstanceName}}** under the **Storage** section of the **Resource list**.
4. Click the **Create bucket +** button.
5. Click the **Customize your bucket** tile.
6. Click in the **Unique bucket name** text entry field.
7. Click the **Regional - Best performance** tile.
8. Click the **Location** pull-down menu.
9. Click the **{{COS.serviceInstanceRegion}}** option in the **Location** pull-down menu.
10. Click the **Smart Tier** storage class tile.
11. Click the **Add +** button in the **Expiration** section.
12. Click the **Expiration rule** toggle button to enable an expiration rule.
13. Click in the **Current version expiration** text entry field.
14. Click **Save**.
15. Click the **Add +** button in the **Retention policy** section.
16. Click in the **Minimum retention period** text entry field.
17. Click in the **Default retention period** text entry field.
18. Click in the **Maximum retention period** text entry field.
19. Click **Save** in the **Retention policy** section.
20. Click the **Key management disabled** toggle button under **Encryption**.
21. Click the **Use existing instance** button in the **Key Protect** tile.
22. Click the **{{KeyProtect.rootKey}}** radio button.
23. Click **Associate key**.
24. Click the **Activity tracking disabled** toggle button under **Monitoring & Activity tracking**.
25. Click the **Track data events (optional)** checkbox.
26. Click the **Track data events** pull-down menu which current shows **read**.
27. Click the **read & write** option in the **Track data events** pull-down menu.
28. Click **Create bucket**.

Once the provisioning completes, the new **Bucket** is ready to be used.

In the next part of the demonstration guide, learn how to upload and manage data in COS.
