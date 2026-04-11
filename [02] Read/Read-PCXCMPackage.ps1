function Read-PCXCMPackage { 
    param(
        [parameter(mandatory=$true)] [string] $PackageName
    )
    
    Get-CMPackage -Name $PackageName
}


 Read-PCXCMPackage -PackageName "PKG_7zip_2.0.0"







    