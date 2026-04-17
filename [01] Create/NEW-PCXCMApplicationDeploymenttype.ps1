<#
MS-Document : 


Syntax :


Direct Command :

#>

# Function goes below


<# 
Usage example :

#>













function New-PCXCMApplicationDeploymentType {
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $InstallationFileLocation
        
    )

Add-CMMsiDeploymentType -ApplicationName "$name" -InstallationFileLocation $InstallationFileLocation -ForceForUnknownPublisher   
Write-Host "Deployment Added" -ForegroundColor Yellow
}

New-PCXCMApplicationDeploymentType   -name "APS_7zip_26.0.0" -InstallationFileLocation "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7z2600-x64.msi"
