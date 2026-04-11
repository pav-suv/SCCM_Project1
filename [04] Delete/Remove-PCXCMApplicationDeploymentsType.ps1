function Remove-PCXCMApplicationDeploymentsType{
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $deploymenttypename
    )   
Remove-CMDeploymentType -ApplicationName "$name" -DeploymentTypeName "$deploymenttypename"

}
Remove-PCXCMApplicationDeploymentsType -name "APS_7Zip" -deploymenttypename "7-Zip 26.00 (x64 edition) - Windows Installer (*.msi file)"
