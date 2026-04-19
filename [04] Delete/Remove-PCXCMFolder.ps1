<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmfolder?view=sccm-ps


Syntax :
Remove-CMFolder
    -Name <String>
    [-ParentContainerNode <IResultObject>]
    [-ParentFolderPath <String>]
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


Direct Command :
Remove-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath -Force

#>

# Function goes below
function Remove-PCXCMFolder {
    param (
        # Parameter help description
        [Parameter(Mandatory=$true)] 
        [String] $FolderName,

        [Parameter(Mandatory=$true)] 
        [String] $ParentFolderPath
    )

Remove-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath -Force

}

<# 
Usage example :
Remove-PCXCMFolder -FolderName "TEST" -ParentFolderPath "DeviceCollection" 
#>
