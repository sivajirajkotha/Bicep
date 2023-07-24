resource Mystroageaccount 'Microsoft.Storage/storageAccounts@2022-05-01'={
kind:'StorageV2'
location:'eastus'
name:'bicepstroagedemocreate'
sku:{
  name: 'Standard_LRS'
}

}

resource stroagelock 'Microsoft.Authorization/locks@2020-05-01'={
name:'Readonlylock'
properties:{
  level: 'ReadOnly'
}
scope:Mystroageaccount
}
