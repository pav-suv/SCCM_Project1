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
        [parameter(Mandatory=$true)]
        [string]$ParentFolderPath,

        [parameter(Mandatory=$true)]
        [string]$FolderName
    )
New-CMFolder -ParentFolderPath $ParentFolderPath -Name $FolderName  
Write-Host "$FolderName folder is created" -ForegroundColor Yellow
}
<# 
Usage example :
New-PCXCMFolder -ParentFolderPath "DeviceCollection" -FolderName "TEST" 
#>

<#
Usage example  

Usage example for application:
New-PCXCMFolder -ParentFolderPath  "Application" -FolderName "TEST2"

Usage example for BootImage:
New-PCXCMFolder -ParentFolderPath  "BootImage" -FolderName "TEST1"

Usage example for ConfigurationBaseline :
New-PCXCMFolder -ParentFolderPath  "ConfigurationBaseline" -FolderName "TEST1"

Usage example for ConfigurationItem :
New-PCXCMFolder -ParentFolderPath  "ConfigurationItem" -FolderName "TEST"

Usage example for OperatingSystemImage :
New-PCXCMFolder -ParentFolderPath  "OperatingSystemImage" -FolderName "TEST"

Usage example for Query" -FolderName :
New-PCXCMFolder -ParentFolderPath  "Query" -FolderName "TEST"

Usage example for SoftwareMetering :
New-PCXCMFolder -ParentFolderPath  "SoftwareMetering" -FolderName "TEST"

Usage example for SoftwareUpdate :
New-PCXCMFolder -ParentFolderPath  "SoftwareUpdate" -FolderName "TEST"

Usage example for TaskSequence :
New-PCXCMFolder -ParentFolderPath  "TaskSequence" -FolderName "TEST"

Usage example for UserCollection :
New-PCXCMFolder -ParentFolderPath  "UserCollection" -FolderName "TEST"

Usage example for UserStateMigration :
New-PCXCMFolder -ParentFolderPath  "UserStateMigration" -FolderName "TEST"

Usage example for VirtualHardDisk :
New-PCXCMFolder -ParentFolderPath  "VirtualHardDisk" -FolderName "TEST"

Usage example for DeploymentPackage :
New-PCXCMFolder -ParentFolderPath  "DeploymentPackage" -FolderName "TEST"

Usage example for SoftwareUpdateGroup :
New-PCXCMFolder -ParentFolderPath  "SoftwareUpdateGroup" -FolderName "TEST"

Usage example for AutoDeploymentRule :
New-PCXCMFolder -ParentFolderPath  "AutoDeploymentRule" -FolderName "TEST"
#>






