Use the click-thru demonstration below to practice provisioning a **Key Protect service** and a **Root Key**. The click-thru demonstration corresponds to the video from the previous chapter. Refer to the video for talking points if the click-thru demonstration is utilized with clients.

Note, fields that require a text entry (e.g. service name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the **play button** ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-COS-L3/includes/CreateKPservice/index.html" target ="_blank">Create an IBM Key Protect service instance and Root Key</a>

2. Click **Catalog** in the top menu bar.
3. Click in the **Catalog search** text entry field.
4. Click the **Key Protect** tile.
5. Click the **Select a location** pull-down menu.
6. Click the **{{KeyProtect.serviceInstanceLocation}} Region** option in the location pull-down menu.
7. Click in the **Service name** text entry field.
8. Click the **Select a resource group** pull-down menu.
9. Click the **{{KeyProtect.serviceInstanceRG}}** option in the resource group pull-down menu.
10. Click the **I have read and agree to the following license agreements** check box.
11. Click the **Create** button.

Once the provisioning completes, the new Key Protect service can be found in the **Services and software** section of the IBM Cloud Portal dashboard. The Key Protect service instance is now ready for use.

Next, a Root Key needs to be created in the Key Protect service.

12. Click **Keys** in the left-hand menu pane.
13. Click the **Add +** button.

Notice **Root key** is already selected under **key type**.

14. Click in the **Key name** text entry field.
15. Click the **Select a key ring** pull-down menu.
16. Click the **default** option in the key ring pull-down menu.
17. Click **Add key**.

In the next part of the demonstration guide, learn how to create a **Service authorization** between the COS service instance and the Key Protect service instance.
