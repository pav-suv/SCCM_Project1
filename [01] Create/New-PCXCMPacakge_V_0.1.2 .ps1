#PCXLab Create package

<#
.SYNOPSIS
Creates a new SCCM package.

.DESCRIPTION
This function creates a new Configuration Manager (SCCM) package 
using the provided package name, company, version, language, and source path.

.PARAMETER packagename
Specifies the name of the package.

.PARAMETER company
Specifies the manufacturer or company name.

.PARAMETER version
Specifies the version of the package.

.PARAMETER language
Specifies the language of the package (e.g., EN-US).

.PARAMETER path
Specifies the source path where package content is stored.

.EXAMPLE
New-PCXCMPackage -packagename "PKG_7zip_2.0.0_01" -company "Igor_Pavlov" -version "2.0.0" -language "EN-US" -path "\\server\share\path"

.EXAMPLE
New-PCXCMPackage "PKG_7zip_2.0.0_01" "Igor_Pavlov" "2.0.0" "EN-US" "\\server\share\path"

.HELP
Get-Help New-PCXCMPackage
Get-Help New-PCXCMPackage -Examples
Get-Help New-PCXCMPackage -detailed
Get-Help New-PCXCMPackage -full

.NOTES
Author: PCXLab
Purpose: SCCM Automation

CHANGELOG:
[0.1.2] - 2026-04-09 - HRP
- Added ValidateSet for Language
- Improved parameter names (PascalCase)
- Added aliases for usability

[0.1.1] - 2026-04-08 - HRP
- Added parameter validation (NotNull, Length, Pattern)
- Added HelpMessage for user prompts

[0.1.0] - 2026-04-07
- Initial version
#>

<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmpackage?view=sccm-ps

Syntax :
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

Direct Command :
New-CMPackage -Name $Packagename -Manufacturer $Company -Version $Version -Language $Language -Path $Path       
#>

# Function goes below
function New-PCXCMPackage{
param (
        [parameter(Mandatory=$true, Position=0, HelpMessage = "Enter the package name properly!!!")] 
        [ValidateNotNullOrEmpty()]         
        [Alias("Name","Pkg","Package","PkgName")] 
        [string]$Packagename,

        [parameter(Mandatory=$true, Position=1, HelpMessage = "Enter the Company name properly!!!")] 
        [ValidateLength(3,50)]             
        [Alias("Comp")] [string]$Company,

        [parameter(Mandatory=$true, Position=2, HelpMessage = "What is the version boss!!!")]        
        [ValidatePattern('^\d+(\.\d+)*$')] 
        [Alias("Ver")]  
        [string]$Version,

        [parameter(Mandatory=$false, Position=3, HelpMessage = "Ov Base maraya sari panla")]          
        [ValidateSet("EN-US","EN-GB","FR-FR","DE-DE")] 
        [Alias("Lang")]
        [string]$Language = "EN-US",

        [parameter(Mandatory=$true, Position=4, HelpMessage = "Masala Dose ? Chatni kodi maraya")]   
        [Alias("Location")]
        [string]$Path
     )
            # assing packag object to variable
            $Package = Get-CMPackage -Name $Packagename
            
            # If condition to check and proceed with packae creation
            if ($Package -ne $null) 
                {
                    Write-Host "Pacckage $Packagename   is alrady there we will not create it again" -ForegroundColor Yellow
                } 
            else {
                Write-Host "Pakcage not there we will create it now" -ForegroundColor Green
                # Crete paakge 
                New-CMPackage -Name $Packagename -Manufacturer $Company -Version $Version -Language $Language -Path $Path       
                }

}

<# 
Usage example ""
New-PCXCMPackage -Packagename "PKG_7zip_2.0.0" -Company "Igor_Pavlov" -Version "2.0.0" -Language "EN-US" -Path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
write-host "Package Created" -ForegroundColor Green
#>

