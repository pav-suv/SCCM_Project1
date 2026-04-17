<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/add-cmdevicecollectionincludemembershiprule?view=sccm-ps

Syntax :
Add-CMDeviceCollectionIncludeMembershipRule
    -CollectionName <String>
    -IncludeCollectionName <String>
    [-PassThru]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


Direct Command :
Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName -IncludeCollectionName $IncludeCollection
#>

# Function goes below
function New-PCXCMIncludeCollection{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [string] $CollectionName,

        [parameter(Mandatory=$true)] 
        [string] $IncludeCollection
    )
    Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName -IncludeCollectionName $IncludeCollection
    Write-Host "Collection included" -ForegroundColor Green
}

<# 
Usage example :
New-PCXCMIncludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -IncludeCollection "PKG_7zip_2.0.0_01[Available]"
#>












