function Update-PCXCMPackage {
    param (
        $packagename,
        $language
    )
    
    Set-CMPackage -Name $packagename -Description "Hellow" -Language $language
}

Update-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -language "EN-US"