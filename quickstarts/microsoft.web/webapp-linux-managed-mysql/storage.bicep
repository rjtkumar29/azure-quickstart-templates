resource fgfgsa 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'fgfgsa'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: {
    creator: 'PIM Integration Team'
    application: 'Product Information Management'
    environment: 'free'
  }
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    supportsHttpsTrafficOnly: true
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Allow'
    }
  }
}
