<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmapplication?view=sccm-ps

Syntax :
Remove-CMApplication
    [-Name] <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
 Remove-CMApplication -ApplicationName "$Name" -Force

#>

# Function goes below
function Remove-PCXCMApplication{
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("AppName","ApplicationName")]
         [string] $Name
        
    )
 Remove-CMApplication -ApplicationName "$Name" -Force

}

<# 
Usage example :
 Remove-PCXCMApplication -Name "APS_7Zip" 
#>