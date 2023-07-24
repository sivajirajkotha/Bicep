
// Parameters

param location string ='eastus'

//Variables
var kind  = 'StroageV2'
var accesstier  = 'Cool'

resource Myfirstdeployment 'Microsoft.Storage/storageAccounts@2021-09-01'={
name: 'Bicepaccount'
kind:kind
location: location
 sku:{
  name:'Standard_LRS'
  }
properties:{ 

accessTier: accesstier
}
}
