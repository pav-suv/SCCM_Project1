<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmapplicationdeployment?view=sccm-ps

Syntax :
Remove-CMApplicationDeployment
    [-Name <String>]
    [-Force]
    [-Collection <IResultObject>]
    [-CollectionId <String>]
    [-CollectionName <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMApplicationDeployment -Name "$Name" -CollectionName "$CollectionName"

#>

# Function goes below
function Remove-Deployments{
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","AppName")]
        [string] $Name,

        [parameter(mandatory=$true, Position=1)] 
        [Alias("Name","CLName")]
        [string] $CollectionName
        
    )
Remove-CMApplicationDeployment -Name "$Name" -CollectionName "$CollectionName"
}

<# 
Usage example :
Remove-Deployments -Name "APS_7yZip" -CollectionName "InstallCollection"
Remove-Deployments -Name "APS_7Zip" -CollectionName "AvailableCollection" 
Remove-Deployments -Name "APS_7Zip" -CollectionName "UninstallCollection"
#>










