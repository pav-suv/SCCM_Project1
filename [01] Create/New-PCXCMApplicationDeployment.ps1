function New-PCXCMApplicationDeployment{
    param (
        [parameter(Mandatory=$true)] [string]$name,
        [parameter(Mandatory=$true)] [datetime]$availabledatetime,
        [parameter(Mandatory=$true)] [string]$Collectionname,
        [parameter(Mandatory=$true)] [datetime]$deadlinedatetime,
        [parameter(Mandatory=$true)] [string]$action,
        [parameter(Mandatory=$true)] [string]$purpose


    )
New-CMApplicationDeployment -Name "$name" -AvailableDateTime "$availabledatetime" -CollectionName $Collectionname  -DeadlineDateTime $deadlinedatetime -DeployAction $action -DeployPurpose $purpose

}



New-PCXCMApplicationDeployment -name "APS_7Zip" -AvailableDateTime '06/04/2026 00:00:00' -Collectionname 'InstallCollection' -DeadlineDateTime '06/04/2026 00:00:00' -action "Install" -purpose "Required"

New-PCXCMApplicationDeploymentment -name "APS_7Zip" -AvailableDateTime '06/04/2026 00:00:00' -Collectionname 'AvailableCollection' -DeadlineDateTime '06/04/2026 00:00:00' -action "Install" -purpose "Available"

New-PCXCMApplicationDeployment -name "APS_7Zip" -AvailableDateTime '06/04/2026 00:00:00' -Collectionname 'UninstallCollection' -DeadlineDateTime '06/04/2026 00:00:00' -action "Uninstall" -purpose "Required"
