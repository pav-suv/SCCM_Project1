function Remove-PCXCMPackage{
     param (
        [parameter(Mandatory=$true)] [string]$packagename,
        [parameter(Mandatory=$true)] [string]$programname
     )
Remove-CMProgram -PackageName "$packagename" -ProgramName "Uninstaller" -Force
}

Remove-PCXCMPackage -packagename "PKG_7zip_2.0.0" -programname "AvailableProgram"