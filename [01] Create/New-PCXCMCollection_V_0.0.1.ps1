<#
MS-Document : 
 https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmdevicecollection?view=sccm-ps


Syntax :
New-CMDeviceCollection
    -LimitingCollectionName <String>
    -Name <String>
    [-Comment <String>]
    [-RefreshSchedule <IResultObject>]
    [-RefreshType <CollectionRefreshType>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
New-CMDeviceCollection -Name $Collectionname -LimitingCollectionName $LimitingCollection

#>

# Function goes below
function New-PCXCMCollection{
    param (
        [Parameter(Mandatory=$true, Position=0, HelpMessage="Write Collection name as per the standard")]
        [ValidateLength (10,29)]
        [Alias("CLname", "Collection", "Name")]
        [string] $Collectionname,            

        [parameter(Mandatory=$false, Position=1, HelpMessage="Type name of the collection which you want to limit.If you dont type anything then it will take 'All Systems' as Limiting Collection")]
        [string] $LimitingCollection = "All Systems"
    )
        New-CMDeviceCollection -Name $Collectionname -LimitingCollectionName $LimitingCollection
        Write-Host "Collection created" -ForegroundColor Green 
}

<# 
Usage example :
 New-PCXCMCollection -Collectionname "PKG_7zip_2.0.0_01[Install]" 
 New-PCXCMCollection -Collectionname "PKG_7zip_2.0.0_01[Available]" 
 New-PCXCMCollection -Collectionname "PKG_7zip_2.0.0_01[UnInstall]" 
 New-PCXCMCollection -Collectionname "PKG_7zip_2.0.0_01[Exception]" 
 #>
