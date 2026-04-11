function Update-PCXCMProgram {
    param (
        $packagename,
        $programname
    )
    
    Set-CMProgram -PackageName $packagename -ProgramName -$programname
}

Update-CXCMProgram -packagename "PKG_7zip_2.0.0" -ProgramName "aaa"


