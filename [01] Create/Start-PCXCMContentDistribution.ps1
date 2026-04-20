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

    begin{
        Write-Host "Welcome to PCXLab Automation for IT task - NOT PROFESSIONAL ONLY FOR LEARNING" -ForegroundColor Cyan
        Write-Host "New are updating application $ApplicationName to DP Group $DistributionPointGroup" -ForegroundColor Yellow
    }

    process{
        Start-CMContentDistribution -ApplicationName $ApplicationName -DistributionPointGroupName $DistributionPointGroup
    }

    end{
        Write-Host "$ApplicationName updated to the DP group $DistributionPointGroup" -ForegroundColor Yellow
        Write-Host "Thank you - www.PCXlab.com - NOT PROFESSIONAL ONLY FOR LEARNING" -ForegroundColor Cyan
    }

}

<# 
Usage example :
Start-PCXCMContentDistributionForApplication -ApplicationName "APS_7zip_26.0.0" -DistributionPointGroupName "ALL Mangalore Group"

#>


