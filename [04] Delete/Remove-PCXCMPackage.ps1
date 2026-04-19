<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmpackage?view=sccm-ps

Syntax :
Remove-CMPackage
    -Name <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
     Remove-CMPackage -Name "$PackageName"

#>

# Function goes below
function Remove-PCXCMPackage{
     param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","PKGName")]
        [string]$PackageName
        
     )
     Remove-CMPackage -Name "$PackageName"
}

<# 
Usage example :
Remove-PCXCMPackage -PackageName "PKG_7zip_2.0.0_01" 
#>

