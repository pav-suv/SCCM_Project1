Set-CMPackageDeployment
    -DeviceProgramName <String>
    -PackageName <String>


    function Update-PCXCMPackageDeployment {
    param (
        $packagename,
        $programname
    )
    
    Set-CMPackageDeployment -DeviceProgramName $programname -PackageName $packagename
}

Update-PCXCMPackageDeployment -programname "aaa" -packagename "PKG_7zip_2.0.0" 