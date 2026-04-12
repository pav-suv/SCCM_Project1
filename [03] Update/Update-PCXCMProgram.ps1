function Update-PCXCMProgram {
    param (
        $PackageName,
        $ProgramName,
        $CommandLine
    )
    
    #Set-CMProgram -Name $PackageName -ProgramName $ProgramName
    Set-CMProgram -PackageName $PackageName -StandardProgram -ProgramName $ProgramName -CommandLine $CommandLine

}



#Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -Language "AvailableProgram"

Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -StandardProgram -ProgramName "InstallProgram" -CommandLine "install.exe /s"
<#
Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -ProgramName "InstallProgram"
Update-PCXCMProgram -PackageName "PKG_7zip_2.0.0_01" -ProgramName "UninstallProgram"



Set-CMPackage -Name # here it is name not Pakcage name
Set-CMPackage -Name "PKG_7zip_2.0.0_01" -Language "Chennai" # here it is name not Pakcage name
Set-CMPackage -Name "PKG_7zip_2.0.0_01" # what are you going to achive here?
Set-CMPackage -Name "PKG_7zip_2.0.0_01" -Description "Kudla"

#>