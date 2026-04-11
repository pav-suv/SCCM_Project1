function Read-IncludeCollection { 
    param(
        [parameter(mandatory=$true)] [string] $collectionname
        
    )
    
Get-CMDeviceCollectionIncludeMembershipRule -CollectionName $collectionname
}

Read-IncludeCollection -collectionname "PKG_7zip_2.0.0"



