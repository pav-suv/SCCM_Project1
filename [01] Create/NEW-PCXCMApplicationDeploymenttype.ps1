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
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Appname")]
        [string] $Name,

        [parameter(mandatory=$true, Position=1)]
        [Alias("FilePath")]
         [string] $InstallationFileLocation   
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding new DeploymentType : $Name " -ForegroundColor Yellow
                    Add-CMDeploymentType -ApplicationName "$Name" -InstallationFileLocation $InstallationFileLocation  

                    Write-Host "DeploymentType is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }
                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}

<# 
Usage example :
New-PCXCMApplicationDeploymentType  -name "APS_7zip_26.0.1" -InstallationFileLocation "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7z2600-x64.msi" -ForceForUnknownPublisher   
#>


New-PCXCMApplicationDeploymentType  -name "APS_7zip_26.0.1" -InstallationFileLocation "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7z2600-x64.msi" 













