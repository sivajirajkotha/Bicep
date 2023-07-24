param location string 
param kind string 
param accesstier string 

resource Myfirstdeployment 'Microsoft.Storage/storageAccounts@2021-09-01'={
name: 'bicepstroagedemo845'
kind:kind
location: location
 sku:{
  name:'Standard_LRS'
  }
properties:{ 

accessTier: accesstier
}
}


resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2019-11-01' = {
  name: 'name'
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    dnsSettings: {
      domainNameLabel: 'dnsname'
    }
  }
  
}


