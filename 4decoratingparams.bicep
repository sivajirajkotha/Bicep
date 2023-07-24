
// Parameters section 
@allowed([
  'eastus'
  'westus'
  'eastus2'
])
@description('Please slected the location for deployment')
param location string ='eastus'
@secure()
@allowed([
  'Standard_LRS'
  'Standard_GRS'

])
param sku string='Standard_LRS'
// Variables sections
@description('select the stroage account Kind')
var kind = 'StorageV2'

@description('select the stroage account accesstier')
var accesstier = 'Cool'

// Resource Deployment
resource Myfirstdeployment 'Microsoft.Storage/storageAccounts@2021-09-01'={
name: 'bicepstroagedemo8'
kind:kind
location: location
 sku:{
  name:sku
  }
properties:{ 

accessTier: accesstier
}
}
