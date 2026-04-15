function Remove-PCXCMProgram{
     param (
        [parameter(Mandatory=$true)] [string]$PackageID,
        [parameter(Mandatory=$true)] [string]$ProgramName
     )
#Remove-CMProgram -PackageName $packagename -ProgramName $programname -Force
Remove-CMProgram -PackageId $PackageID -ProgramName $ProgramName -Force
}

#Remove-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -programname "AvailableProgram"

Remove-PCXCMProgram -PackageId "PS100051" -ProgramName "AvailableProgram"

#Remove-CMProgram -

# Try now