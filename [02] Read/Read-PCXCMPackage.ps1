function Read-PCXCMPackage { 
    param(
        [parameter(mandatory=$true)] [string] $PackageName
    )
    
    Get-CMPackage -Name $PackageName
}


 Read-PCXCMPackage -PackageName "APS_7zip_26.0.0"







    