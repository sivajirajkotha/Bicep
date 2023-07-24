
var concat = 'bicep'

param location string = 'SouthCentralUS'
param vnets array = [
'vnet1'
'vnet2'
'vnet3'
]

resource BicepVnets 'Microsoft.Network/virtualNetworks@2022-01-01' = [for vnet in vnets: {
  name: '${concat}${vnet}'
  location:location
  properties:{
    addressSpace:{
      addressPrefixes:[
        '10.0.0.0/16'
      ]
    }
  }

}]
