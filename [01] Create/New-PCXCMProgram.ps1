function New-PCXCMProgram{
    param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $programname,
        [parameter(Mandatory=$true)] [string] $commandline
    )


    New-CMProgram -PackageName $packagename -StandardProgramName $programname -CommandLine $commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn
        Write-Host "Program created" -ForegroundColor Green

}


New-PCXCMProgram -packagename "PKG_7zip_2.0.0_01" -programname "AvailableProgram" -commandline "ProgramInstall"
New-PCXCMProgram -packagename "PKG_7zip_2.0.0_01" -programname "InstallProgram" -commandline "ProgramInstall"
New-PCXCMProgram -packagename "PKG_7zip_2.0.0_01" -programname "UninstallProgram" -commandline "ProgramUnInstall"
