
# First and imporotent we need to try to include most optiosn atleast as optional partameter (Mandatory false but it should be usable for future requriemnet)
        # Next improvements for pakcage 

        # General
        # commnet Options to add
        # Architecture Options to add
        # Arch Language Options to add

        # Data Source
        # Update dp on schedule
        # Persist content
        # Boundary diferential replication

        # Distribution Settings
        # Distribution priority (Low/Medium/High)
        # 

function New-PCXCMPackage{
     param (
        [parameter(Mandatory=$true, Position=0, HelpMessage = "Enter the package name properly!!!")] [ValidateNotNullOrEmpty()]         [Alias("Name","Pkg","Package","PkgName")] [string]$packagename,
        [parameter(Mandatory=$true, Position=1, HelpMessage = "Enter the Company name properly!!!")] [ValidateLength(3,50)]             [Alias("Comp")] [string]$company,
        [parameter(Mandatory=$true, Position=2, HelpMessage = "What is the version boss!!!")]        [ValidatePattern('^\d+(\.\d+)*$')] [Alias("Ver")]  [string]$version,
        [parameter(Mandatory=$true, Position=3, HelpMessage = "Ov Base maraya sari panla")]          [ValidateSet("EN-US","EN-GB","FR-FR","DE-DE")] [Alias("Lang")][string]$language = "EN-US",
       # [parameter(Mandatory=$true, Position=4, HelpMessage = "Masala Dose ? Chatni kodi maraya")]   [ValidateScript({ Test-Path $_ })] [Alias("Location")][string]$path
        [parameter(Mandatory=$true, Position=4, HelpMessage = "Masala Dose ? Chatni kodi maraya")]   [Alias("Location")][string]$path

     )
     New-CMPackage -Name $packagename -Manufacturer $company -Version $version -Language $language -Path $path       
}

New-PCXCMPackage "PKG_7zip_2.0.0_01" "Igor_Pavlov" "2.0.0" "EN-US"  "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0"


<#Usage example
New-PCXCMPackage -packagename "PKG_7zip_2.0.0" -company "Igor_Pavlov" -version "2.0.0" -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
write-host "Package Created" -ForegroundColor Green
#>

<# Usage example 
New-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -company "Igor_Pavlov" -version "2.0.0" -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
New-PCXCMPackage -Name "PKG_7zip_2.0.0_01" -company "Alias" -version "2.0.0" -language "EN-US" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip_msi\7zip_26.0.0"

New-PCXCMPackage -name 

New-PCXCMPackage "PKG_7zip_2.0.0_01" "Igor_Pavlov" "2.0.0" "EN-US"  "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"


Read-Host "Enter the package name properly!!!"

Write-Host "Enter the package name properly!!!"

#>
<#

[ValidateScript({
    if (-not (Test-Path $_)) {
        throw "Path does not exist: $_"
    }
    $true
})]

#>

<#
Single Line

#>

<# Sript optiosn possible in validation

function Test-PCXWINCutomPath {
    param (
        [Parameter(Mandatory=$true, HelpMessage="Masala Dose ? Chatni kodi maraya")]
        [ValidateScript({
            if (-not (Test-Path $_)) {
                throw "Path does not exist: $_"
            }
            $true
        })]
        [string]$path
    )

    Write-Host "Change drive path to c drive fisrt" -ForegroundColor Red
}

Test-CutomPath -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip_msi\7zip_26.0.0"

#>



