resource newdiag632 'Microsoft.Storage/storageAccounts@2022-05-01' existing ={

name: 'storageaccount0903'

}

resource fileservice 'Microsoft.Storage/storageAccounts/fileServices@2022-05-01' existing ={
name: 'default'
parent: newdiag632


} 

// 
resource share 'Microsoft.Storage/storageAccounts/fileServices/shares@2022-05-01'= {
name: 'mybicedemo'
parent: fileservice
properties:{
  enabledProtocols:'SMB'
  shareQuota: 10
  accessTier:'Cool'
  
  }
}

