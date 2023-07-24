// Stroage account creation 
param location string = 'eastus'
resource storageacc 'Microsoft.Storage/storageAccounts@2022-05-01'={
kind:'StorageV2'
location:location
name:'dfsdfdlfjsdlsdj'
sku:{
  name:'Standard_LRS'
}


}


// Key vault 

resource mykevault 'Microsoft.KeyVault/vaults@2022-07-01'={
location:location
name: 'myvault'
properties:{
  sku: {
    family: 'A'
    name: 'premium'
  }
  tenantId: '4ae48b41-0137-4599-8661-fc641fe77bea'
}


}
