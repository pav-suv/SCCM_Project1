function New-PCXCMExcludeCollection{
    param(
        [parameter(Mandatory=$true)] [string] $Collectiname,
        [parameter(Mandatory=$true)] [string] $excludecollection
    )
    Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $Collectiname -ExcludeCollectionName $excludecollection
    Write-Host "Collection excluded" -ForegroundColor Green
}

New-PCXCMExcludeCollection -Collectiname "PKG_7zip_2.0.0_01[Install]" -excludecollection "PKG_7zip_2.0.0_01[Exception]"