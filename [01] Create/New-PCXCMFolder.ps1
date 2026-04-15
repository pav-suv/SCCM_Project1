<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmfolder?view=sccm-ps
 
Syntax :
New-CMFolder
    -ParentFolderPath <String>
    [-Name <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
New-CMFolder -ParentFolderPath "DeviceCollection" -Name "Test"
#>

function  New-PCXCMFolder {
    param (
        [parameter(Mandatory=$true)][string] $ParentFolderPath,
        [parameter(Mandatory=$true)][string] $FolderName
    )
New-CMFolder -ParentFolderPath $ParentFolderPath -Name $FolderName  
Write-Host "$FolderName folder is created" -ForegroundColor Yellow
}
<# 
Usage example :
New-PCXCMFolder -ParentFolderPath "DeviceCollection" -FolderName "TEST" 
#>





