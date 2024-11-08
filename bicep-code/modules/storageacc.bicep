@description('The name of the Storage Account')
param storageAccountName string

@description('Location for the Storage Account')
param location string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

output storageAccountId string = storageAccount.id
output storageAccountName string = storageAccount.name
