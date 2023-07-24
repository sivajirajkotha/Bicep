//create a storage account
resource Myfirstdeployment 'Microsoft.Storage/storageAccounts@2022-05-01'={
name: 'bicepstaorge01052023'
kind:'StorageV2'
location:'eastus'
 sku:{
  name:'Standard_LRS'
  }
properties:{
  accessTier:'Cool'
  allowBlobPublicAccess:false
  }
}










