<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/add-cmdevicecollectionexcludemembershiprule?view=sccm-ps


Syntax :
Add-CMDeviceCollectionExcludeMembershipRule
    -CollectionName <String>
    -ExcludeCollectionName <String>
    [-PassThru]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


Direct Command :
Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $Collectiname -ExcludeCollectionName $Excludecollection
#>

# Function goes below 
function New-PCXCMExcludeCollection{
    param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Collection", "CLName")]
         [string] $CollectionName,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("ExCollection","Exclude")]
        [string] $ExcludeCollection
    )
    Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $CollectionName -ExcludeCollectionName $ExcludeCollection
    Write-Host "Collection excluded" -ForegroundColor Green
}


<# 
Usage example :
New-PCXCMExcludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -ExcludeCollection "PKG_7zip_2.0.0_01[Exception]"
#>









