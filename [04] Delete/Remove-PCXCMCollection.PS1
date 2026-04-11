function Remove-PCXCMCollection{
    param(
        [parameter(mandatory=$true)] [string] $Collectionname
        
    )
Remove-CMDeviceCollection -Name "$Collectionname"  -Force

}
Remove-PCXCMCollection -Collectionname "InstallCollection" 
Remove-PCXCMCollection -Collectionname "AvailableCollection" 
Remove-PCXCMCollection -Collectionname "UninstallCollection" 
Remove-PCXCMCollection -Collectionname "ExceptionCollection" 