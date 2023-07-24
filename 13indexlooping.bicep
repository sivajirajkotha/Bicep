param VnetPrefix string ='Bicep'
param location string = resourceGroup().location

  var Vnetworks = [
  {
  addresprefix : '10.0.0.0/16'
  subnets: [
  {
  addressPrefix: '10.0.1.0/24' 
  }
  {
  addressPrefix: '10.0.2.0/24' 
  }
  {
  addressPrefix: '10.0.3.0/24' 
  }

  ]
}
{
  addresprefix : '10.1.0.0/16'
  subnets: [
  {
  addressPrefix: '10.1.0.0/28' 
  }
  {
  addressPrefix: '10.1.0.0/27' 
  }
  {
  addressPrefix: '10.1.0.0/26' 
  }

  ]
}
]

resource vnetresource 'Microsoft.Network/virtualNetworks@2022-01-01' = [for (vnet, index) in Vnetworks: {
name:'${VnetPrefix}${index}'
location:location
properties:{
addressSpace:{
  addressPrefixes:[
    
    vnet.addresprefix
  ]
}
  
  subnets:[for (snet, snetindex) in vnet.subnets : {
    name:'${VnetPrefix}${snetindex}'
    properties:{
      addressPrefix: snet.addressprefix
    }
  }]
}
  
}]
