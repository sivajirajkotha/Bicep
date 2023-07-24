param location string = 'eastus'
resource vnet 'Microsoft.Network/virtualNetworks@2022-01-01'={
name: 'BicepVnet'
location:location
properties:{
  addressSpace:{
    addressPrefixes:[
      '10.0.0.0/17'
    ]
  }
}
}

resource Subnet1 'Microsoft.Network/virtualNetworks/subnets@2022-01-01'={
name: 'Subnet1'
parent:vnet
properties:{
  addressPrefix:'10.0.1.0/24'
}
}

resource Subnet2 'Microsoft.Network/virtualNetworks/subnets@2022-01-01'={

name: 'Subnet2'
parent:vnet
properties:{
  addressPrefix:'10.0.2.0/24'
}

}
