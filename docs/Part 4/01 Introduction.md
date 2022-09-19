To enable COS and Key Protect to work together, a **service authorization** must be created to allow the **COS** and **Key Protect** to work together. **Service authorizations** are managed by the IBM Cloud Identity and Access Management (IAM). In an authorization, the source service (COS in this demonstration guide) is the service that is granted access to the target service (Key Protect in this demonstration guide). The roles that you select define the level of access for the source service.

Learn more about **service authorizations** <a href="https://cloud.ibm.com/docs/account?topic=account-serviceauth&interface=ui" target="_blank">here</a>.

For this demonstration guide, the **service authorization** is narrowly scoped to the specific COS service instance and Key Protect service instance as seen in the video in the next chapter.
