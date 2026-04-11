function Read-PCXCMCollection { 
    param(
        [parameter(mandatory=$true)] [string] $Collectionname
    )
    
    Get-CMDeviceCollection -Name $Collectionname
}


 Read-PCXCMCollection -Collectionname "PKG_7zip_2.0.0"