To be written:

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






> ic cos config region —region “us-south”

# enter “us-south”

> ic cos config list

> ic resource service-instance COS-L3-service --id


Retrieving service instance COS-L3-service in all resource groups under account IBM DTE Cloud Platform as andrew@jones-tx.com...
crn:v1:bluemix:public:cloud-object-storage:global:a/934360f4a07b734c569d05a94f71816e:f0a3293e-28ee-416e-b412-86d25c84f7df:: f0a3293e-28ee-416e-b412-86d25c84f7df

# need to use the CRN after the ::  f0a3293e-28ee-416e-b412-86d25c84f7df

> ic cos config crn --crn f0a3293e-28ee-416e-b412-86d25c84f7df


> ic cos buckets

OK
2 buckets found in your account:

Name                 Date Created
cos-l3-bucket-1      Sep 07, 2022 at 17:42:39
cos-l3-shortbucket   Sep 07, 2022 at 19:30:20

> ic cos objects --bucket cos-l3-bucket-1
OK
Found 4 objects in bucket 'cos-l3-bucket-1':

Name                   Last Modified              Object Size
SuperSecretData.rtf    Sep 07, 2022 at 19:03:07   411 B
SuperSecretData2.rtf   Sep 07, 2022 at 19:07:03   443 B
image (5).png          Sep 08, 2022 at 21:35:19   58.81 KiB
slack.gif              Sep 08, 2022 at 19:49:41   897.70 KiB



# when trying to delete with Write access get:

andrew@cloudshell:~$ ic cos object-delete --bucket cos-l3-bucket-1 --key "slack.gif"
WARNING: This will permanently delete the object 'slack.gif' from the bucket 'cos-l3-bucket-1'.
Are you sure you would like to continue? [y/N]> y
FAILED
InvalidRequestForLegalReasons: The object is protected
        status code: 451, request id: db244dda-1eb8-4512-b397-21efdf3519a7, host id:


# in Activity Tracker it says “InvalidRequestForLegalReasons”







# upload a file
echo “hello world” > arj.txt
ls -l arj.txt

ic cos object-put —bucket cos-l3-bucket-1 —key arj.txt —body arj.txt

# above uses default retention period




# do curl stuff??

https://cloud.ibm.com/docs/cloud-object-storage?topic=cloud-object-storage-curl


ibmcloud iam api-key-create MyKey -d "this is my API key" --file key_file

# using apices value from above output

curl -X "POST" "https://iam.cloud.ibm.com/oidc/token"      -H 'Accept: application/json'      -H 'Content-T
ype: application/x-www-form-urlencoded'      --data-urlencode "apikey=INSERTKEYHERE"      --data-
urlencode "response_type=cloud_iam"      --data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey"



# get public end point from portal

#s3.us-south.cloud-object-storage.appdomain.cloud
