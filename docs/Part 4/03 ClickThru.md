Use the click-thru demonstration below to practice provisioning **Service Authorization**. The click-thru demonstration corresponds to the video from the previous chapter. Refer to the video for talking points if the click-thru demonstration is utilized with clients.

Note, fields that require a text entry (e.g. service name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the **play button** ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-COS-L3/includes/CreateServiceAuthorization/index.html" target ="_blank">Create a Service Authorization</a>

2. Click **Manage** in the top menu bar.
3. Click **Access (IAM)** option in the **Manage** pull-down menu.
3. Click **Authorizations** under **Manage access** in left-hand pane.
4. Click the **Create +** button.
5. Click the **Source service** pull-down menu.
6. Click the **Cloud Object Storage** option in the **Source service** pull-down menu.
7. Click the **Resources based on selected attributes** radio button.
8. Click the **Source service instance** checkbox.
9. Click the **Source service instance** pull-down menu.
10. Click the **{{COS.serviceInstanceName}} option in the **Source service instance** pull-down menu.
11. Click the **Target service** pull-down menu.
12. Click the **Key Protect** option in the **Target service** pull-down menu.
13. Click the **Resources based on selected attributes** radio button.
14. Click the **Instance ID** checkbox.
15. Click the **Value** pull-down menu.
16. Click the **{{KeyProtect.serviceInstanceName}} option in the **Value** pull-down menu.
17. Click the **Reader** checkbox.
18. Click the **Authorize** button.

The **Service authorization** is now enabled between COS and Key Protect.

In the next part of the demonstration guide, learn how to create an **Activity Tracker** service instance.
