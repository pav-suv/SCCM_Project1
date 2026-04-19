<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmdeploymenttype?view=sccm-ps

Syntax :
Remove-CMDeploymentType
    [-DeploymentTypeName] <String>
    -ApplicationName <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMDeploymentType -ApplicationName "$Name" -DeploymentTypeName "$DeploymentTypeName"

#>

# Function goes below
function Remove-PCXCMApplicationDeploymentsType{
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("AppName", "ApplicationName")]
         [string] $Name,

        [parameter(mandatory=$true, Position=1)]
        [Alias("Name","DTName")]
         [string] $DeploymentTypeName
    )   
Remove-CMDeploymentType -ApplicationName "$Name" -DeploymentTypeName "$DeploymentTypeName"

}

<# 
Usage example :
Remove-PCXCMApplicationDeploymentsType -Name "APS_7Zip" -DeploymentTypeName "7-Zip 26.00 (x64 edition) -Windows Installer (*.msi file)"
#>








