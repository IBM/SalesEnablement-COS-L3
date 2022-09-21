For this exercise, the IBM Cloud Shell will be used so no additional software is required. IBM Cloud Shell gives users complete control of their cloud resources, applications and infrastructure, from any web browser. IBM Cloud Shell provides pre-authenticated access to the latest tools and programming languages for cloud-based development, deployment and management of services and applications — all in a secure shell. IBM Cloud Shell is instantly accessible from the IBM Cloud portal.

Follow the seps below to learn more about the COS command line interfaces.

1. Change to the **ITZ - ADHOC03** account using the drop-down switcher, as shown in the GIF below.

![](_attachments/SwitchAccounts-final.gif)

!!! tip
    If the browser window is narrow, this icon: ![](_attachments/SwitchAccountsIcon.png) may appear instead of the current account name as shown in the screen capture above.

2. Click the IBM Cloud Shell icon ![](_attachments/CloudShellIcon.png).

![](_attachments/StartCloudShell.png)

The next steps are performed in using the IBM Cloud Shell window that was just opened.

3. In the top-right corner of the IBM Cloud Shell window is a square icon with an "up" arrow. Click this button to upload a file — upload the SSH key downloaded earlier.

In this chapter, a similar scenario as seen in Part 7 will be used where files will be uploaded, retention periods set, and attempts to delete the objects will be made. To facilite the scenario, a script is provided that will automatically download the 6 image files to the IBM Cloud Shell environment.

!!! important
    Be sure to utilize the demonstration guides **copy** ![](_attachments/Usage-Clipboard.png) icon to avoid typographical errors in executing commands.

4. Download the script to download the images files.

```
wget https://raw.githubusercontent.com/IBM/SalesEnablement-COS-L3/main/docs/includes/downloadImageFiles.bash
```

5. Execute the script to download the images files, and when prompted, enter a unique prefix to use in the file names (e.g. arj123).

```
bash ./downloadImageFiles.bash
```

6. Verify the files now exist in the IBM Cloud Shell environment.

```
ls *.jpg
```

??? example "Example output"
    arj123-check1.jpg  arj123-check2.jpg  arj123-check3.jpg  arj123-check4.jpg  arj123-check5.jpg  arj123-check6.jpg

Next, in order to use the COS CLIs, a few configuration steps must be completed.

7. Set the COS region to {{COS.serviceInstanceRegion}}.

```
ibmcloud cos config region --region "{{COS.serviceInstanceRegion}}"
```

??? example "Example output"
    OK

    Successfully saved default region. The program will look for buckets in the region us-south.

8. Retrieve the Cloud Resource Name (CRN) for the COS service instance {{COS.serviceInstanceName}}.

The -id flag returns just the CRN without additional information.

```
ibmcloud resource service-instance {{COS.serviceInstanceID}} -id
```

??? example "Example output"
    Retrieving service instance COS-L3-service in all resource groups under account ITZ - ADHOC03 as andrewj@us.ibm.com...

    crn:v1:bluemix:public:cloud-object-storage:global:a/ba0e33c9056f470ca19de009747ec654:43d07b21-b680-4d31-9d51-178f582d630c:: 43d07b21-b680-4d31-9d51-178f582d630c

9. Set Cloud Resource Name (CRN) for the COS CLI configuration to the COS service instance CRN.

In this command, multiple commands are being executed. The command from the previous step is re-run and sent to the **cut** command to only return first part of the output. This is then added to the command to set the CRN for the COS configuration. The -q flag is added to suppress the headers from the first command.

```
ibmcloud cos config crn -crn `ibmcloud resource service-instance ${{COS.serviceInstanceID}} -id -q | cut -f1 -d' ''`
```

??? example "Example output"
    Saving new Service Instance ID...

    OK

    Successfully stored your service instance ID.

10. Verify CRN and region are set in COS CLI configuration.

```
ibmcloud cos config list
```

??? example "Example output"
    Key                     Value

    Last Updated            Monday, September 19 2022 at 21:24:46

    Default Region          us-south

    Download Location       /home/andrew/Downloads

    CRN                     crn:v1:bluemix:public:cloud-object-storage:global:a/ba0e33c9056f470ca19de009747ec654:43d07b21-b680-4d31-9d51-178f582d630c::

    AccessKeyID

    SecretAccessKey

    Authentication Method   IAM

    URL Style               VHost

    Service Endpoint

Notice in the output the **Download Location** is set to **/home/<your user ID>/Downloads**. Since this directory doesn't exist, it needs to be created before a object download can occur.

11. Create a **Downloads** directory in the Cloud Shell environment.

```
mkdir downloadImageFiles
```

12. List all the **buckets** in the COS **service instance**.

```
ibmcloud cos buckets
```

??? example "Example output"
    OK

    2 buckets found in your account:

    Name                       Date Created

    cos-l3-with-retention      Sep 15, 2022 at 20:47:08

    cos-l3-without-retention   Sep 15, 2022 at 22:10:01

13. List the **storage class** of the COS bucket.

```
ibmcloud cos bucket-class-get -bucket {{COS.bucket1}}
```

??? example "Example output"
    OK

    Details about bucket cos-l3-bucket-1:

    Region: us-south

    Class: Smart

14. List the current content of a bucket.

```
ibmcloud cos objects -bucket {{COS.bucket1}}
```

??? example "Example output"
    OK

    Found 2 objects in bucket 'cos-l3-with-retention':

    Name                Last Modified              Object Size

    arj123-check2.jpg   Sep 19, 2022 at 17:28:14   101.41 KiB

    arj123-check3.jpg   Sep 19, 2022 at 20:07:32   83.08 KiB

15. Upload a file to the COS bucket.

The next command has 2 parameters that will need to be modified prior to executing them. The **-key** option specifies the filename for the object in COS.  The **-body** option specifies the local file to be uploaded. A unique **-key** must be specified. In the commands below, change **arj123-check4.jpg** to one of the files you downloaded earlier. Be sure to select a file that has not already been uploaded.

```ibmcloud cos object-put -bucket {{COS.bucket1}} —key arj123-check4.jpg -body arj123-check4.jpg```

The above command does not specify a retention period for the object. When this happens, the **default** value (recall this was set to 1 day for this bucket) is used. In order to specify a different value via the command line, the object content and key must be provided using Java Object Notation (JSON). Refer to the COS <a href="https://cloud.ibm.com/docs/cloud-object-storage?topic=cloud-object-storage-cli-plugin-ic-cos-cli&mhsrc=ibmsearch_a&mhq=cloud+object+storage+cli#ic-upload-s3manager" target="_blank">here</a> for more details.

??? example "Example output"


16. Try uploading the same file again.

```ibmcloud cos object-put —bucket {{COS.bucket1}} —key arj123-check4.jpg —body arj123-check4.jpg```

??? example "Example output"

Why did this fail?

??? question "Answer"
    Because the bucket has a retention policy, objects cannot be updated, thus protecting the objects **immutability**.

17. Try to download the object.

```ibmcloud cos object-put -bucket {{COS.bucket1}} -key arj123-check4.jpg -body arj123-check4.jpg```

??? example "Example output"
    NEED output

18. Verify the file was downloaded.

```
ls -l Downloads
```

19. Try to delete the object.

```ibmcloud cos object-delete -bucket {{COS.bucket1}} -key arj123-check4.jpg```

??? example "Example output"
    NEED output


NEED A SUMMARY
