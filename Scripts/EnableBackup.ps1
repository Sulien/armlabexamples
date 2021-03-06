param (
    [Parameter(Mandatory)]
    [string]$vaultName = "vault728",

    [Parameter(Mandatory)]
    [string]$ResourceGroupName = "rg-backup",

    [Parameter(Mandatory)]
    [string]$VMName = "appifyweb-01",

    [Parameter(Mandatory)]
    [string]$VMResourceGroupName = "rg-vmwebapp"

)

$vault = Get-AzureRmRecoveryServicesVault -Name $vaultName -ResourceGroupName $resourceGroupName

#Set Vault Context
Set-AzureRmRecoveryServicesVaultContext -Vault $vault

$policy = Get-AzureRmRecoveryServicesBackupProtectionPolicy -name "DailyPolicy"

Enable-AzureRmRecoveryServicesBackupProtection `
    -ResourceGroupName $VMResourceGroupName `
    -Name $VMName `
    -Policy $policy `
    -ErrorAction SilentlyContinue