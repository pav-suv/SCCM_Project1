 <# 
    MS Document :
    https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmapplication?view=sccm-ps

    Syntax :
    New-CMApplication
    [-AddOwner <String[]>]
    [-AddSupportContact <String[]>]
    [-AppCatalog <AppDisplayInfo[]>]
    [-AutoInstall <Boolean>]
    [-DefaultLanguageId <Int32>]
    [-Description <String>]
    [-DisplaySupersedenceInApplicationCatalog <Boolean>]
    [-IconLocationFile <String>]
    [-IsFeatured <Boolean>]
    [-Keyword <String[]>]
    [-LinkText <String>]
    [-LocalizedDescription <String>]
    [-LocalizedName <String>]
    [-Name] <String>
    [-OptionalReference <String>]
    [-Owner <String>]
    [-PrivacyUrl <String>]
    [-Publisher <String>]
    [-ReleaseDate <DateTime>]
    [-SoftwareVersion <String>]
    [-SupportContact <String>]
    [-UserDocumentation <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

    Direct command
    New-CMApplication -Name "$name"  -Description "$description" -Publisher "$publisher"  -SoftwareVersion "$softwereversion" -OptionalReference "Reference" -ReleaseDate "$ReleaseDate" -AutoInstall $True -Owner "Administrator" -SupportContact "Administrator" -LocalizedName "Application01" -UserDocumentation "https://contoso.com/content" -LinkText "For more information" -LocalizedDescription "New Localized Application" -Keyword "application" -PrivacyUrl "https://contoso.com/library/privacy" -IsFeatured $True -IconLocationFile "$Iconlocationfile"
   #>


function New-Application{
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("Name", "AppName")]
        [string]$Name,

        [parameter(mandatory=$true, Position=1)]
        [Alias("Comment", "Message")]
        [string]$Description,

        [parameter(mandatory=$true, Position=2)] 
        [Alias("Author","Manufracturer")]
        [string]$Publisher,

        [parameter(mandatory=$true, Position=3)] 
        [Alias("Version", "Softver")]
        [string]$SoftwereVersion,

        [parameter(mandatory=$true,Position=4)]
        [Alias("Location","Path")]
        [string]$Iconlocationfile,

        [parameter(mandatory=$true, Position=5)]
        [Alias("Date","RsDate")]
        [string]$ReleaseDate
    )
    New-CMApplication -Name "$Name" -Description "$Description" -Publisher "$Publisher"  -SoftwareVersion "$SoftwereVersion" -OptionalReference "Reference" -ReleaseDate "$ReleaseDate" -AutoInstall $True -Owner "Administrator" -SupportContact "Administrator" -LocalizedName "Application01" -UserDocumentation "https://contoso.com/content" -LinkText "For more information" -LocalizedDescription "New Localized Application" -Keyword "application" -PrivacyUrl "https://contoso.com/library/privacy" -IsFeatured $True -IconLocationFile "$Iconlocationfile"
    write-host "Application $name : Created " -ForegroundColor Yellow
}
 
    New-Application -Name "APS_7zip_26.0.0" -Description "New Application" -Publisher "Igor-Pavlov" -SoftwereVersion "26.00" -ReleaseDate "2/12/2026" -Iconlocationfile "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip_msi\7zip_26.0.0\7ZipIcon.png"
  