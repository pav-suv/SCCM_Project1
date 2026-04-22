<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/start-cmcontentdistribution?view=sccm-ps

Syntax :
Start-CMContentDistribution
    -ApplicationName <String[]>
    [-CollectionName <String[]>]
    [-DisableContentDependencyDetection]
    [-DistributionPointGroupName <String[]>]
    [-DistributionPointName <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Start-CMContentDistribution -ApplicationName "APS_7zip_26.0.0" -DistributionPointGroupName "ALL Mangalore Group"

#>

# Function goes below (Make use of begin {} process {} end {} keywards)
function Start-PCXCMContentDistributionForApplication{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [Alias("AppName", "App")]
        [String]
        $ApplicationName,

        [Parameter(Mandatory=$true, Position=1)]
        [Alias("DPGroup", "DistributionPointGroupName")]
        [String]$DistributionPointGroup

    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Distibution point group name : $DistributionPointGroup " -ForegroundColor Yellow
                    Start-CMContentDistribution -ApplicationName $ApplicationName -DistributionPointGroupName $DistributionPointGroup
                    Write-Host "Distibution point group name $DistributionPointGroup is created." -ForegroundColor Green
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
Start-PCXCMContentDistributionForApplication -ApplicationName "APS_7zip_26.0.1" -DistributionPointGroupName "ALL Mangalore Group"

#>


