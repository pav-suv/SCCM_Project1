<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollection?view=sccm-ps

Syntax :
Remove-CMCollection
    -Name <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMDeviceCollection -Name "$CollectionName"  -Force
#>

# Function goes below
function Remove-PCXCMCollection{
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Nmae", "CLName")]
        [string] $CollectionName
        
    )
Remove-CMDeviceCollection -Name "$CollectionName"  -Force

}

<# 
Usage example :
Remove-PCXCMCollection -CollectionName "InstallCollection" 
Remove-PCXCMCollection -CollectionName "AvailableCollection" 
Remove-PCXCMCollection -CollectionName "UninstallCollection" 
Remove-PCXCMCollection -CollectionName "ExceptionCollection" 
#>






