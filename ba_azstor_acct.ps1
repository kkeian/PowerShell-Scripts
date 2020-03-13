# ba_azstor_acct.ps1 - Connect and blow away storage account used for
#  Azure bash and PowerShell browser-based CLI
# WARNING: This will destory all data. Ensure you copy/transfer
#  all data that you wish to keep.

# Need to connect to your Azure cloud account
Connect-AzAccount

# Get storage account info needed for targeting
$rgname=(Get-AzStorageAccount).ResourceGroupName
$acname=(Get-AzStorageAccount).StorageAccountName

# Blow away storage account
Remove-AzStorageAccount -ResourceGroupName $rgname -AccountName $acname
