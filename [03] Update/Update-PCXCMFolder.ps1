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
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name", "OLName")]
         [string] $OldName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Nmae", "NWName")]
         [string] $NewName,

        [parameter(Mandatory=$true, Position=2)] 
        [Alias("Path", "PFPath")]
        [string] $ParentFolderPath
    )
Set-CMFolder -Name $OldName -NewName $NewName -ParentFolderPath $ParentFolderPath
}

<# 
Usage example :
Set-PCXCMFolder -OldName "TEST" -NewName "TEST2" -ParentFolderPath "DeviceCollection"
#>


