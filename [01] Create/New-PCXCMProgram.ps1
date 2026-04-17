<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmprogram?view=sccm-ps

Syntax :
New-CMProgram
    -CommandLine <String>
    -PackageName <String>
    -StandardProgramName <String>
    [-AddSupportedOperatingSystemPlatform <IResultObject[]>]
    [-DiskSpaceRequirement <String>]
    [-DiskSpaceUnit <DiskSpaceUnitType>]
    [-DriveLetter <String>]
    [-DriveMode <DriveModeType>]
    [-Duration <Int32>]
    [-ProgramRunType <ProgramRunType>]
    [-Reconnect <Boolean>]
    [-RunMode <RunModeType>]
    [-RunType <RunType>]
    [-UserInteraction <Boolean>]
    [-WorkingDirectory <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


Direct Command :
New-CMProgram -PackageName $Packagename -StandardProgramName $Programname -CommandLine $Commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn

#>

# Function goes below
function New-PCXCMProgram{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [Alias("Name", "PKGName")]
        [string] $Packagename,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("Name", "PrgName")]
        [string] $Programname,

        [parameter(Mandatory=$true, Position=2)]
        [Alias("Coommandline", "CMD")]
         [string] $Commandline
    )
New-CMProgram -PackageName $Packagename -StandardProgramName $Programname -CommandLine $Commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn
    Write-Host "Program created" -ForegroundColor Green

}


<# 
Usage example :
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0_01" -Programname "AvailableProgram" -Commandline "ProgramInstall"
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0_01" -Programname "InstallProgram" -Commandline "ProgramInstall"
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0_01" -Programname "UninstallProgram" -Commandline "ProgramUnInstall"

#>

















