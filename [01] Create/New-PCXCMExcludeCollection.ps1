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
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding ExcludeCollection : $ExcludeCollectio " -ForegroundColor Yellow
                    Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $CollectionName -ExcludeCollectionName $ExcludeCollection
                    Write-Host "ExcludeCollection $ExcludeCollectio is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
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

<# 
Usage example :
New-PCXCMExcludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -ExcludeCollection "PKG_7zip_2.0.0_01[Exception]"
#>









