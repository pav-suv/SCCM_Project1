function New-PCXCMProgram{
    param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $programname,
        [parameter(Mandatory=$true)] [string] $commandline
    )


    New-CMProgram -PackageName $packagename -StandardProgramName $programname -CommandLine $commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn
}

New-PCXCMProgram -packagename "PKG_7Zip_26.0.0.0" -programname "AvailableProgram" -commandline "ProgramInstall"
New-PCXCMProgram -packagename "PKG_7Zip_26.0.0.0" -programname "InstallProgram" -commandline "ProgramInstall"
New-PCXCMProgram -packagename "PKG_7Zip_26.0.0.0" -programname "UninstallProgram" -commandline "ProgramUnInstall"
