<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/add-cmdeploymenttype?view=sccm-ps

Syntax :
Add-CMDeploymentType
    -ContentLocation <String>
    [-AddRequirement <Rule[]>]
    [-AdministratorComment <String>]
    [-ApplicationName <String>]
    [-AutoIdentifyFromInstallationFile]
    [-DeploymentTypeName <String>]
    [-EnableContentLocationFallback <Boolean>]
    [-ForceForUnknownPublisher <Boolean>]
    [-InputObject <IResultObject>]
    [-Language <String[]>]
    [-OnSlowNetworkMode <ContentHandlingMode>]
    [-TriggerVpn <Boolean>]
    [-Windows8AppInstaller]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
    Add-CMMDeploymentType -ApplicationName "$name" -InstallationFileLocation $InstallationFileLocation -ForceForUnknownPublisher   
#>

# Function goes below
function New-PCXCMApplicationDeploymentType {
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $InstallationFileLocation
        
    )
    # Start
        begin {
            Write-Host "We are creating new application deployment type: $Name "
        }

        # Actuall Process goeas here
        process {
        Add-CMMDeploymentType -ApplicationName "$name" -InstallationFileLocation $InstallationFileLocation -ForceForUnknownPublisher   
        }

        # End in flow chart
        end {
            Write-Host "Deploymenttype creation process completed : $Name" -ForegroundColor Yellow
        }
}

<# 
Usage example :
New-PCXCMApplicationDeploymentType   -name "APS_7zip_26.0.0" -InstallationFileLocation "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7z2600-x64.msi"
#>















