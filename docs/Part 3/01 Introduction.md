The next step is to create a **Key Protect service** and a **Root Key**. In the Regulated Archive scenario, **Key Protect** and COS work together to help protect the regulated data while at rest. This added protection encrypts the data encryption keys (DEKs) associated with the COS. To completely understand the COS and Key Protect integration works, go <a href="https://cloud.ibm.com/docs/key-protect?topic=key-protect-integrate-cos#kp-cos-how" target="_blank">here</a>.

In this scenario, IBM Key Protect is used. In other client scenarios, IBM Hyper Protect Crypto Services may be required.

IBM Key Protect for IBM Cloud is a full-service encryption solution that allows data to be secured and stored in IBM Cloud using the latest envelope encryption techniques that leverage FIPS 140-2 Level 3 certified cloud-based hardware security modules. Learn more about IBM Key Protect <a href="https://www.ibm.com/cloud/key-protect?mhsrc=ibmsearch_a&mhq=IBM%20Key%20Protect" target="_blank">here</a>.

Learn more about IBM Hyper Protect Crypto Services <a href="https://www.ibm.com/cloud/hyper-protect-crypto?mhsrc=ibmsearch_a&mhq=hyper%20protect%20crypto%20services" target="_blank">here</a> and its ability to rovide a higher level of security like <a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/Certificate/34" target="_blank">FIPS 140-2 Level 4</a>.

**Key Protect services** are specific to a IBM Cloud location. In this demonstration, a new **Root Key** will be generated via the IBM Cloud Portal, but **Key Protect** also supports Bring Your Own Key (BYOK).
