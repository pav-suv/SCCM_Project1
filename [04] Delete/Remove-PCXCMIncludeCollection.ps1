<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollectionincludemembershiprule?view=sccm-ps

Syntax :
Remove-CMCollectionIncludeMembershipRule
    -CollectionName <String>
    -IncludeCollectionName <String>
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMCollectionIncludeMembershipRule -CollectionName "$CollectionName" -IncludeCollectionName "$IncludeCollectionName" -Force

#>

# Function goes below
function Remove-PCXCMIncludeCollection{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","CLName")]
        [string] $CollectionName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Name","IncludeCollection")]
        [string] $IncludecollectionName
     )

Remove-CMCollectionIncludeMembershipRule -CollectionName "$CollectionName" -IncludeCollectionName "$IncludecollectionName" -Force
}

<# 
Usage example :
Remove-PCXCMIncludeCollection -CollectionName "InstallCollection" -IncludecollectionName "AvailableCollection"

#>



