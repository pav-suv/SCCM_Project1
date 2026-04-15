<#
MS-Document :
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmfolder?view=sccm-ps 

Syntax :
Set-CMFolder
    -Name <String>
    [-ParentContainerNode <IResultObject>]
    [-ParentFolderPath <String>]
    [-NewName <String>]
    [-MoveToPath <String>]
    [-MoveToFolder <IResultObject>]
    [-PassThru]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


Direct Command :
Set-CMFolder -Name "<OLD_Name>" -NewName "<NEW_Name>" -ParentFolderPath "DeviceCollection"

#>
# Function goes below
function  Set-PCXCMFolder{
    param(
        [parameter(Mandatory=$true)] [string] $OldName,
        [parameter(Mandatory=$true)] [string] $NewName,
        [parameter(Mandatory=$true)] [string] $ParentFolderPath
    )
Set-CMFolder -Name $OldName -NewName $NewName -ParentFolderPath $ParentFolderPath
}

<# 
Usage example :
Set-PCXCMFolder -OldName "TEST" -NewName "TEST1" -ParentFolderPath "DeviceCollection"
#>
