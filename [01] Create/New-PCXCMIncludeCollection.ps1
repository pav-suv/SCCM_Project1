function New-PCXCMIncludeCollection{
    param(
        [parameter(Mandatory=$true)] [string] $Collectionname,
        [parameter(Mandatory=$true)] [string] $includecollection
    )
    Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $Collectionname -IncludeCollectionName $includecollection
    Write-Host "Collection included" -ForegroundColor Green
}

New-PCXCMIncludeCollection -Collectionname "AAA-Install" -includecollection "AAA-Available"