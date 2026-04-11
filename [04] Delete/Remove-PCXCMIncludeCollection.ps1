function Remove-PCXCMIncludeCollection{
     param(
        [parameter(Mandatory=$true)] [string] $collectionname,
        [parameter(Mandatory=$true)] [string] $Includecollectionname
     )

Remove-CMCollectionIncludeMembershipRule -CollectionName "$collectionname" -IncludeCollectionName "$Includecollectionname" -Force
}

Remove-PCXCMIncludeCollection -collectionname "InstallCollection" -Includecollectionname "AvailableCollection"