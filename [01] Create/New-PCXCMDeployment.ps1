<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmpackagedeployment?view=sccm-ps


Syntax :
New-CMPackageDeployment
    -PackageName <String>
    -ProgramName <String>
    [-DeployPurpose <DeployPurposeType>]
    [-DeviceProgram]
    [-RecurUnit <RecurUnitType>]
    [-RecurValue <Int32>]
    [-Rerun <Boolean>]
    [-UseUtc <Boolean>]
    [-DistributeCollectionName <String>]
    [-DistributeContent]
    [-DistributionPointGroupName <String>]
    [-DistributionPointName <String>]
    [-AvailableDateTime <DateTime>]
    [-Comment <String>]
    [-DeadlineDateTime <DateTime>]
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
      New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -DeployPurpose Required -ProgramName $programname  -Schedule $NewScheduleDeadline

#>

# Function goes below


<# 
Usage example :

#>











function New-PCXCMDeployment{
     param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $collectionname,
       # [parameter(Mandatory=$true)] [string] $comment,
        [parameter(Mandatory=$true)] [string] $programname,
       # [parameter(Mandatory=$false)] [string] $deploypurpose,
       # [parameter(Mandatory=$false)] $schedule,
        [parameter(Mandatory=$false)] [DateTime]$DeadlineTime,
        [parameter(Mandatory=$false)] [array]$NewScheduleDeadline
     )
     # Date Time calculation 
      $DeadlineTime = (Get-Date -Hour 23 -Minute 0 -Second 0).AddDays(15)
      $NewScheduleDeadline = New-CMSchedule  -Start $DeadlineTime -Nonrecurring

      <#
      #$schedule
      $DeadlineTime.GetType()
      $NewScheduleDeadline.GetType()
      #$schedule.GetType()
      #>
      
      # Command
      #New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -ProgramName $programname -Comment $comment -DeployPurpose $deploypurpose 
      #New-CMPackageDeployment -StandardProgram -PackageName "PKG_7zip_2.0.0_01" -CollectionName "PKG_7zip_2.0.0_01[Install]" -DeployPurpose Required -ProgramName "InstallProgram"  -Schedule $NewScheduleDeadline
      New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -DeployPurpose Required -ProgramName $programname  -Schedule $NewScheduleDeadline
}

<#
Usage example::::::::::::::::::




<#
Usage examples::::::::::::::::::
New-PCXCMDeployment -packagename "PKG_7zip_2.0.0_01" -collectionname "PKG_7zip_2.0.0_01[Available]" -programname "AvailableProgram" -comment "PKG_7Zip Program" -deploypurpose "Available"    
New-PCXCMDeployment -packagename "PKG_7zip_2.0.0_01" -collectionname "PKG_7zip_2.0.0_01[Available]" -programname "AvailableProgram" -comment "PKG_7Zip Program" -deploypurpose "Available"    



New-PCXCMDeployment -packagename "PKG_7zip_2.0.0_01" -collectionname "PKG_7zip_2.0.0_01[Install]" -programname "InstallProgram" -comment "PKG_7Zip Program" -deploypurpose "Required " -schedule "NewScheduleDeadline"
New-PCXCMDeployment -packagename "PKG_7zip_2.0.0_01" -collectionname "PKG_7zip_2.0.0_01[UnInstall]" -programname "UninstallProgram" -comment "PKG_7Zip Program"  -deploypurpose "Required" -schedule "NewScheduleDeadline"

#>