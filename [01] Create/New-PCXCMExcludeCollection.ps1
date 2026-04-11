function New-PCXCMExcludeCollection{
    param(
        [parameter(Mandatory=$true)] [string] $Collectiname,
        [parameter(Mandatory=$true)] [string] $excludecollection
    )
    Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $Collectiname -ExcludeCollectionName $excludecollection
    Write-Host "Collection excluded" -ForegroundColor Green
}

New-PCXCMExcludeCollection -Collectiname "AAA-Install" -excludecollection "AAA-Exception"