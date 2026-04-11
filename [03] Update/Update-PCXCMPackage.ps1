function Update-PCXCMPackage {
    param (
        $packagename,
        $language
    )
    
    Set-CMPackage -Name $packagename -Description "Hellow" -Language $language
}

Update-PCXCMPackage -packagename "PKG_7zip_2.0.0" -language "FX-USE"