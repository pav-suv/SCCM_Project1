<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmfolder?view=sccm-ps

Syntax :
Get-CMFolder
    [[-Name] <String>]
    [-InputObject <IResultObject>]
    [-ParentFolderPath <String>]
    [-TypeName <String>]
    [-IsEmpty <Boolean>]
    [-IsSearchFolder <Boolean>]
    [-SiteCode <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [<CommonParameters>]

Command Usage example :
Get-CMFolder -Name "TEST" -ParentFolderPath "DeviceCollection"
#>

# Function goes below
function Read-PCXCMFolder{
    param(
        [parameter(Mandatory=$true)] [string] $FolderName,
        [parameter(Mandatory=$true)] [string] $ParentFolderPath
    )
Get-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath
}

<# 
Function Usage example :
Read-PCXCMFolder -FolderName "TEST" -ParentFolderPath "DeviceCollection"
#>
