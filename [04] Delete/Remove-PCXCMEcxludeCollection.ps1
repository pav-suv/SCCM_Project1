function Remove-PCXCMExcludeCollection{
     param(
        [parameter(Mandatory=$true)] [string] $collectionname,
        [parameter(Mandatory=$true)] [string] $Excludecollectionname
     )

Remove-CMCollectionExcludeMembershipRule -CollectionName "$collectionname" -Excludecollectionname "$Excludecollectionname" -Force
}

Remove-PCXCMExcludeCollection -collectionname "InstallCollection" -Excludecollectionname "AvailableCollection"