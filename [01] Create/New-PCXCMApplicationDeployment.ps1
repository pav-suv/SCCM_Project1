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



New-PCXCMApplicationDeployment -name "APS_7zip_26.0.0" -AvailableDateTime '12/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[Available]' -DeadlineDateTime '06/04/2026 00:00:00' -action "Install" -purpose "Required"

New-PCXCMApplicationDeploymentment -name "APS_7zip_26.0.0" -AvailableDateTime '12/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[Install]' -DeadlineDateTime '06/04/2026 00:00:00' -action "Install" -purpose "Available"

New-PCXCMApplicationDeployment -name "APS_7zip_26.0.0" -AvailableDateTime '12/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[UnInstall]' -DeadlineDateTime '06/04/2026 00:00:00' -action "Uninstall" -purpose "Required"
