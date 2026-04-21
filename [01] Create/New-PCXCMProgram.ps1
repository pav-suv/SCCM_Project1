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
d
# Function goes below
function New-PCXCMProgram{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [Alias("Name", "PKGName")]
        [string] $Packagename,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("PrgName")]
        [string] $ProgramName,

        [parameter(Mandatory=$true, Position=2)]
        [Alias("Coommandline", "CMD")]
         [string] $Commandline
    )
begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are creating new Program : $ProgramName " -ForegroundColor Yellow
                    New-CMProgram -PackageName $Packagename -StandardProgramName $ProgramName -CommandLine $Commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn


                    Write-Host "ProgramName $ProgramName is created." -ForegroundColor Green
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
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0" -Programname "AvailableProgram" -Commandline "ProgramInstall"
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0" -Programname "InstallProgram" -Commandline "ProgramInstall"
New-PCXCMProgram -Packagename "PKG_7zip_2.0.0" -Programname "UninstallProgram" -Commandline "ProgramUnInstall"
#>

















