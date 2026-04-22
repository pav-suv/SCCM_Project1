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
        [string] $CollectionName,            

        [parameter(Mandatory=$false, Position=1, HelpMessage="Type name of the collection which you want to limit.If you dont type anything then it will take 'All Systems' as Limiting Collection")]
        [string] $LimitingCollection = "All Systems"
    )
    
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Now we are going to create collection $CollectionName" -ForegroundColor Yellow
                    New-CMDeviceCollection -Name $CollectionName -LimitingCollectionName $LimitingCollection
                    Write-Host "Collection $CollectionName is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly Created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }

                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }

    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow

    }
}  

New-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" 

<# 
Usage example :
 New-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" 
 New-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Available]" 
 New-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[UnInstall]" 
 New-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Exception]" 
 #>
