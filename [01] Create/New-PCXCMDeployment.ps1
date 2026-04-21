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
      New-CMPackageDeployment -StandardProgram -PackageName $Packagename -CollectionName $Collectionname -DeployPurpose Required -ProgramName $Programname  -Schedule $NewScheduleDeadline
#>

# Function goes below
function New-PCXCMDeployment{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Pkgname")]
        [string] $Packagename,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("CLName")]
        [string] $Collectionname,

        [parameter(Mandatory=$false, Position=2)] 
        [Alias("Description")]
        [string] $Comment,

        [parameter(Mandatory=$true, Position=3)] 
        [Alias("Pgname")]
        [string] $Programname,

        [parameter(Mandatory=$true, Position=4)]
        [Alias("Purpose")]
        [string] $deploypurpose,

        [parameter(Mandatory=$false, Position=5)] 
        [Alias("Shedule")]
        $schedule,

        [parameter(Mandatory=$false, Position=6)] 
        [Alias("Time")]
        [DateTime]$DeadlineTime,

        [parameter(Mandatory=$false, Position=7)] 
        [Alias("Deadline")]
        [array]$NewScheduleDeadline
        
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
      #New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -ProgramName $programname -Comment $comment 
      #New-CMPackageDeployment -StandardProgram -PackageName "PKG_7zip_2.0.0_01" -CollectionName "PKG_7zip_2.0.0_01[Install]" -DeployPurpose Required -ProgramName "InstallProgram"  -Schedule $NewScheduleDeadline
      New-CMPackageDeployment -StandardProgram -PackageName $Packagename -CollectionName $Collectionname -DeployPurpose $deploypurpose -ProgramName $Programname  -Schedule $NewScheduleDeadline 
}

<#
Usage examples::::::::::::::::::
New-PCXCMDeployment -Packagename "PKG_7zip_2.0.0" -Collectionname "PKG_7zip_2.0.0_01[Available]" -Programname "AvailableProgram" -Comment "PKG_7Zip Program" -deploypurpose "Available"                    
New-PCXCMDeployment -packagename "PKG_7zip_2.0.0" -collectionname "PKG_7zip_2.0.0_01[Install]" -programname "InstallProgram" -comment "PKG_7Zip Program" -deploypurpose "Required " -schedule "NewScheduleDeadline"
New-PCXCMDeployment -packagename "PKG_7zip_2.0.0" -collectionname "PKG_7zip_2.0.0_01[UnInstall]" -programname "UninstallProgram" -comment "PKG_7Zip Program"  -deploypurpose "Required" -schedule "NewScheduleDeadline"
#>


      <#
      .SYNOPSIS
      Short description
      .DESCRIPTION
      Long description
      .EXAMPLE
      Example of how to use this cmdlet
      .EXAMPLE
      Another example of how to use this cmdlet
      .INPUTS
      Inputs to this cmdlet (if any)
      .OUTPUTS
      Output from this cmdlet (if any)
      .NOTES
      General notes
      .COMPONENT
      The component this cmdlet belongs to
      .ROLE
      The role this cmdlet belongs to
      .FUNCTIONALITY
      The functionality that best describes this cmdlet
      #>
      [CmdletBinding(DefaultParameterSetName = 'ParameterSet1',
            SupportsShouldProcess,
            PositionalBinding,
            HelpUri = 'http://yourwebsiteforhelp.here',
            ConfirmImpact = 'Medium')]
      [Alias('Be-lazyWithThis','lzy','Use-OldFunctionName')]
      [OutputType([String])]
      param (
            # Param1 help description
            [Parameter(Mandatory,
                  ValueFromPipeline,
                  ValueFromPipelineByPropertyName,
                  ValueFromRemainingArguments,
                  Position = 0,
                  ParameterSetName = 'ParameterSet1')]
            [ValidateNotNull()]
            [ValidateNotNullOrEmpty()]
            [ValidateCount(0, 5)]
            [ValidateSet("sun", "moon", "earth")]
            [Alias("p1")]
            $Param1,

            # Param2 help description
            [Parameter(ParameterSetName = 'ParameterSet1')]
            [AllowNull()]
            [AllowEmptyCollection()]
            [AllowEmptyString()]
            [ValidateScript({ true })]
            [ValidateRange(0, 5)]
            [int]
            $Param2,

            # Param3 help description
            [Parameter(ParameterSetName = 'Another Parameter Set')]
            [ValidatePattern("[a-z]*")]
            [ValidateLength(0, 15)]
            [String]
            $Param3,

            # Param4 help description
            # Checkout the docs https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_argument_completion?view=powershell-7.5#argumentcompletions-attribute on different ways to provide Argument Completion
            [Parameter(ParameterSetName = 'Yet Another Parameter Set')]
            [ArgumentCompleter({'add completer script'})]
            [ValidateLength(0, 15)]
            [String]
            $Param4
      )

      begin {
            #BeginCodeHere
      }

      process {
            if ($pscmdlet.ShouldProcess("Target", "Operation")) {
                  #ProcessCodeHere
            }
      }

      end {
            #EndCodeHere
      }

      clean {
            #CleanCodeHere - Added in 7.3 for more information see https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced_methods?view=powershell-7.5#clean
      }
