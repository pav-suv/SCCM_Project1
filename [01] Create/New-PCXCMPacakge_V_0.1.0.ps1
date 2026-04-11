#

<#
New-CMPackage
    -Name <String>
    [-Description <String>]
    [-Language <String>]
    [-Manufacturer <String>]
    [-Path <String>]
    [-Version <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
#>
function New-PCXCMPackage{
     param (
        [parameter(Mandatory=$true)] [string]$packagename,
        [parameter(Mandatory=$true)] [string]$company,
        [parameter(Mandatory=$true)] [string]$version,
        [parameter(Mandatory=$true)] [string]$language,
        [parameter(Mandatory=$true)] [string]$path


     )
     New-CMPackage -Name $packagename -Manufacturer $company -Version $version -Language $language -Path $path       
}
<#Usage example
New-PCXCMPackage -packagename "PKG_7zip_2.0.0" -company "Igor_Pavlov" -version "2.0.0" -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
write-host "Package Created" -ForegroundColor Green
#>

<#

New-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -company "Igor_Pavlov" -version "2.0.0" -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
New-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -company " " -version " " -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"


New-PCXCMPackage "PKG_7zip_2.0.0_01" "Igor_Pavlov" "2.0.0" "EN-US"  "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"


#>


