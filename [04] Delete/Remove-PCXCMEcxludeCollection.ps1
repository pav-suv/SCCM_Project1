<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollectionexcludemembershiprule?view=sccm-ps

Syntax :
Remove-CMCollectionExcludeMembershipRule
    -CollectionName <String>
    -ExcludeCollectionName <String>
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMCollectionExcludeMembershipRule -CollectionName "$CollectionName" -Excludecollectionname "$ExcludecollectionName" -Force

#>

# Function goes below
function Remove-PCXCMExcludeCollection{
     param(
        [parameter(Mandatory=$true,Position=0)] 
        [Alias("CLName", "Name")]
        [string] $CollectionName,
        [parameter(Mandatory=$true,Position=1)]
        [Alias("Name", "ExcludeCL")]
         [string] $ExcludecollectionName
     )

Remove-CMCollectionExcludeMembershipRule -CollectionName "$CollectionName" -ExcludecollectionName "$ExcludecollectionName" -Force
}

<# 
Usage example :
Remove-PCXCMExcludeCollection -CollectionName "InstallCollection" -ExcludecollectionName "AvailableCollection"
#>

