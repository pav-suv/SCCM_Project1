<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmapplicationdeployment?view=sccm-ps

Syntax :
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

Direct Command :
New-CMApplicationDeployment -Name "$Name" -AvailableDateTime "$Availabledatetime" -CollectionName $Collectionname  -DeadlineDateTime $Deadlinedatetime -DeployAction $Action -DeployPurpose $Purpose
#>

# Function goes below :
function New-PCXCMApplicationDeployment{
    param (
        [parameter(mandatory=$true, Position=0)]
        [Alias("ApplicationName", "AppName")]
        [string]$Name,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("AvlDT")]
        [DateTime]$Availabledatetime,

        [parameter(Mandatory=$true, Position=2)]
        [Alias("CLName")]
        [string]$Collectionname,

        [parameter(Mandatory=$true, Position=3)] 
        [Alias("DedDT")]
        [DateTime]$Deadlinedatetime,

        [parameter(Mandatory=$true, Position=4)] 
        [Alias("Acn")]
        [string]$Action,

        [parameter(Mandatory=$true, Position=5)] 
        [Alias("Reason","Rsn")]
        [string]$Purpose
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are creating new Application Deployment : $Name " -ForegroundColor Yellow
                    New-CMApplicationDeployment -Name "$Name" -AvailableDateTime "$Availabledatetime" -CollectionName $Collectionname  -DeadlineDateTime $Deadlinedatetime -DeployAction $Action -DeployPurpose $Purpose
                    Write-Host "Application Deployment $Name is created." -ForegroundColor Green
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
New-PCXCMApplicationDeployment -Name "APS_7zip_26.0.1" -AvailableDateTime '21/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[Available]' -DeadlineDateTime '22/04/2026 00:00:00' -Action "Install" -Purpose "Available"
New-PCXCMApplicationDeployment -Name "APS_7zip_26.0.1" -AvailableDateTime '21/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[Install]' -DeadlineDateTime '22/04/2026 00:00:00' -Action "Install" -Purpose "Required"
New-PCXCMApplicationDeployment -Name "APS_7zip_26.0.1" -AvailableDateTime '21/04/2026 00:00:00' -Collectionname 'PKG_7zip_2.0.0_01[UnInstall]' -DeadlineDateTime '22/04/2026 00:00:00' -Action "Uninstall" -Purpose "Required"
#>

