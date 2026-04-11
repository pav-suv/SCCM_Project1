function Read-ExcludeCollection { 
    param(
        [parameter(mandatory=$true)] [string] $collectionname
        
    )
    
Get-CMDeviceCollectionExcludeMembershipRule -CollectionName $collectionname
}

Read-ExcludeCollection  -collectionname "PKG_7zip_2.0.0"