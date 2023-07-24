
param location string 
resource vnet 'Microsoft.Network/virtualNetworks@2022-01-01'={
name: 'BicepVnet'
location:location
properties:{
  addressSpace:{
    addressPrefixes:[
      '10.0.0.0/17'
    ]
  }
  subnets:[
      {
        name:'subnet1'
        properties:{
          addressPrefix:'10.0.1.0/24'
        }
      }

      {
      name:'subnet2'
      properties:{
        addressPrefix:'10.0.12.0/24'
      }
      
      }

  ]

}
}



