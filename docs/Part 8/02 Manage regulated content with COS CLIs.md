To be written:

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



andrew@cloudshell:~$ ic cos object-delete --bucket cos-l3-bucket-1 --key "slack.gif"
WARNING: This will permanently delete the object 'slack.gif' from the bucket 'cos-l3-bucket-1'.
Are you sure you would like to continue? [y/N]> y
FAILED
Access to your IBM Cloud account was denied. Log in again by typing ibmcloud login --sso.

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

# add a hold


# do curl stuff??

https://cloud.ibm.com/docs/cloud-object-storage?topic=cloud-object-storage-curl


ibmcloud iam api-key-create MyKey -d "this is my API key" --file key_file

# using apices value from above output

curl -X "POST" "https://iam.cloud.ibm.com/oidc/token"      -H 'Accept: application/json'      -H 'Content-T
ype: application/x-www-form-urlencoded'      --data-urlencode "apikey=WmCVmTrDcnI8mU8CtS3hJXitQdmOJhQk1MzhhePqhKUN"      --data-
urlencode "response_type=cloud_iam"      --data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey"



# get public end point from portal

#s3.us-south.cloud-object-storage.appdomain.cloud
