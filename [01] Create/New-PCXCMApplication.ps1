


function New-Application{
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $description,
        [parameter(mandatory=$true)] [string] $publisher,
        [parameter(mandatory=$true)] [string] $softwereversion,
        [parameter(mandatory=$true)] [string] $Iconlocationfile,
        [parameter(mandatory=$true)] [string] $ReleaseDate
    )
    New-CMApplication -Name "$name"  -Description "$description" -Publisher "$publisher"  -SoftwareVersion "$softwereversion" -OptionalReference "Reference" -ReleaseDate "$ReleaseDate" -AutoInstall $True -Owner "Administrator" -SupportContact "Administrator" -LocalizedName "Application01" -UserDocumentation "https://contoso.com/content" -LinkText "For more information" -LocalizedDescription "New Localized Application" -Keyword "application" -PrivacyUrl "https://contoso.com/library/privacy" -IsFeatured $True -IconLocationFile "$Iconlocationfile"
    write-host "Application $name : Created " -ForegroundColor Yellow
}
 
    New-Application -name "APS_7Zip" -description "New Application" -publisher "Igor-Pavlov" -softwereversion "26.00" -ReleaseDate "2/12/2026" -Iconlocationfile "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7ZipIcon.png"
  