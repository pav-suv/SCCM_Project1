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


<#
Usage example 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmapplicationdeployment?view=sccm-ps

New-CMApplicationDeployment
    [-Name] <String>
    [-AllowRepairApp <Boolean>]
    [-ApprovalRequired <Boolean>]
    [-AutoCloseExecutable <Boolean>]
    [-DeadlineDateTime <DateTime>]
    [-DeployAction <DeployActionType>]
    [-DeployPurpose <DeployPurposeType>]
    [-DisableContentDependencyDetection]
    [-EnableMomAlert <Boolean>]
    [-EnableSoftDeadline <Boolean>]
    [-FailParameterValue <Int32>]
    [-GenerateScomAlertOnFailure <Boolean>]
    [-OverrideServiceWindow <Boolean>]
    [-PostponeDateTime <DateTime>]
    [-PreDeploy <Boolean>]
    [-RebootOutsideServiceWindow <Boolean>]
    [-ReplaceToastNotificationWithDialog <Boolean>]
    [-Simulation]
    [-SuccessParameterValue <Int32>]
    [-TimeBaseOn <TimeType>]
    [-UpdateSupersedence <Boolean>]
    [-UserNotification <UserNotificationType>]
    [-DistributeCollectionName <String>]
    [-DistributeContent]
    [-DistributionPointGroupName <String>]
    [-DistributionPointName <String>]
    [-AvailableDateTime <DateTime>]
    [-Comment <String>]
    [-PersistOnWriteFilterDevice <Boolean>]
    [-SendWakeupPacket <Boolean>]
    [-UseMeteredNetwork <Boolean>]
    [-Collection <IResultObject>]
    [-CollectionId <String>]
    [-CollectionName <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


New-CMApplicationDeployment -Name "$name" -AvailableDateTime "$availabledatetime" -CollectionName $Collectionname  -DeadlineDateTime $deadlinedatetime -DeployAction $action -DeployPurpose $purpose




#>


