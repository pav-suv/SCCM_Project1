<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollectionincludemembershiprule?view=sccm-ps

Syntax :
Remove-CMCollectionIncludeMembershipRule
    -CollectionName <String>
    -IncludeCollectionName <String>
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMCollectionIncludeMembershipRule -CollectionName "$CollectionName" -IncludeCollectionName "$IncludeCollectionName" -Force

#>

# Function goes below
function Remove-PCXCMIncludeCollection{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","CLName")]
        [string] $CollectionName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Name","IncludeCollection")]
        [string] $IncludecollectionName
     )

     begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting IncludecollectionName : $IncludecollectionName " -ForegroundColor Yellow
                    Remove-CMCollectionIncludeMembershipRule -CollectionName "$CollectionName" -IncludeCollectionName "$IncludecollectionName" -Force
                    Write-Host "IncludecollectionName  $IncludecollectionName  is Deleted." -ForegroundColor Green
                    Write-Host "We tried and successfuly deleted................."  -ForegroundColor Magenta
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
Remove-PCXCMIncludeCollection -CollectionName "InstallCollection" -IncludecollectionName "AvailableCollection"

#>



