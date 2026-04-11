function Remove-PCXCMApplication{
    param(
        [parameter(mandatory=$true)] [string] $name
        
    )
 Remove-CMApplication -ApplicationName "$name" -Force

}
 Remove-PCXCMApplication -name "APS_7Zip" 