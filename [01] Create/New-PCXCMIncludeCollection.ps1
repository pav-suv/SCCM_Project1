function New-PCXCMIncludeCollection{
    param(
        [parameter(Mandatory=$true)] [string] $Collectionname,
        [parameter(Mandatory=$true)] [string] $includecollection
    )
    Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $Collectionname -IncludeCollectionName $includecollection
    Write-Host "Collection included" -ForegroundColor Green
}

New-PCXCMIncludeCollection -Collectionname "PKG_7zip_2.0.0_01[Install]" -includecollection "PKG_7zip_2.0.0_01[Available]"