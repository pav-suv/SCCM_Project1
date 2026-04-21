<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmpackage?view=sccm-ps

Syntax :
Set-CMPackage
    -Name <String>
    [-CopyToPackageShareOnDistributionPoint <Boolean>]
    [-CustomPackageShareName <String>]
    [-Description <String>]
    [-DisconnectUserFromDistributionPoint <Boolean>]
    [-DisconnectUserFromDistributionPointMins <UInt32>]
    [-DisconnectUserFromDistributionPointRetry <UInt32>]
    [-DistributionPointUpdateSchedule <IResultObject>]
    [-EnableBinaryDeltaReplication <Boolean>]
    [-Language <String>]
    [-Manufacturer <String>]
    [-MifFileName <String>]
    [-MifName <String>]
    [-MifPublisher <String>]
    [-MifVersion <String>]
    [-MulticastAllow <Boolean>]
    [-MulticastEncrypt <Boolean>]
    [-MulticastTransferOnly <Boolean>]
    [-NewName <String>]
    [-PassThru]
    [-Path <String>]
    [-PersistContentInCache <Boolean>]
    [-PrestageBehavior <PrestageBehavior>]
    [-Priority <Priorities>]
    [-SendToPreferredDistributionPoint <Boolean>]
    [-Version <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
    Set-CMPackage -Name $PackageName -Description "Hellow" -Language $Language
#>

# Function goes below
function Update-PCXCMPackage {
    param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name", "PKGName")]
        [string] $PackageName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("EN", "Lan")]
        [string] $Language
        
    )
    # Start
        begin {
            Write-Host "We are updating Package : $Packagename "
        }

        # Actuall Process goeas here
        process {
            Set-CMPackage -Name $Packagename -Description "Hello" -Language $Language

        }

        # End in flow chart
        end {
            Write-Host "Package update process completed : $Packagename"
        }
}

<# 
Usage example :
Update-PCXCMPackage -Packagename "PKG_7zip_2.0.0_02" -Language "EN-US"
#>






