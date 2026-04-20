<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmprogram?view=sccm-ps

Syntax :
Set-CMProgram
    -PackageName <String>
    -ProgramName <String>
    [-AddSupportedOperatingSystemPlatform <IResultObject[]>]
    [-AfterRunningType <AfterRunningType>]
    [-Category <String>]
    [-CommandLine <String>]
    [-Comment <String>]
    [-DisableMomAlertOnRun <Boolean>]
    [-DisableProgram <Boolean>]
    [-DiskSpaceRequirement <String>]
    [-DiskSpaceUnit <DiskSpaceUnitType>]
    [-DriveLetter <String>]
    [-DriveMode <DriveModeType>]
    [-Duration <Int32>]
    [-EnableTaskSequence <Boolean>]
    [-GenerateMomAlertOnFail <Boolean>]
    [-PassThru]
    [-ProgramAssignedType <ProgramAssignedType>]
    [-ProgramRunType <ProgramRunType>]
    [-Reconnect <Boolean>]
    [-RemoveSupportedOperatingSystemPlatform <IResultObject[]>]
    [-Requirement <String>]
    [-RunMode <RunModeType>]
    [-RunOnAnyPlatform]
    [-RunType <RunType>]
    [-StandardProgram]
    [-SuppressProgramNotification <Boolean>]
    [-UserInteraction <Boolean>]
    [-WorkingDirectory <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
    Set-CMProgram -PackageName $PackageName -StandardProgram -ProgramName $ProgramName -CommandLine $CommandLine

#>

# Function goes below
function Update-PCXCMProgram {
    param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name", "PKGName")]
        [string] $PackageName,

        [parameter(Mandatory=$true, Position=0)]
        [Alias("Program", "PgrmName")]
        [string] $ProgramName,

        [parameter(Mandatory=$true, Position=0)]
        [Alias("CMDLine", "CMD")]
        [string] $CommandLine  
    )

     # Start
        begin {
            Write-Host "We are updating Package Program : $ProgramName "
        }

        # Actuall Process goeas here
        process {
            Set-CMProgram -PackageName $PackageName -StandardProgram -ProgramName $ProgramName -CommandLine $CommandLine    
        }

        # End in flow chart
        end {
            Write-Host "Program update process completed : $ProgramName "
        }
}

<# 
Usage example :
Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -ProgramName "InstallProgram" -CommandLine "install.exe /s"
#>

#Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -Language "AvailableProgram"

<#
Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -ProgramName "InstallProgram"
Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -ProgramName "UninstallProgram"

Set-CMPackage -Name # here it is name not Pakcage name
Set-CMPackage -Name "PKG_7zip_2.0.0_01" -Language "Chennai" # here it is name not Pakcage name
Set-CMPackage -Name "PKG_7zip_2.0.0_01" # what are you going to achive here?
Set-CMPackage -Name "PKG_7zip_2.0.0_01" -Description "Kudla"
#>
