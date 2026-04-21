<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollection?view=sccm-ps

Syntax :
Remove-CMCollection
    -Name <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMDeviceCollection -Name "$CollectionName"  -Force
#>

# Function goes below
function Remove-PCXCMCollection{
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Nmae", "CLName")]
        [string] $CollectionName
        
    )

    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting CollectionName : $CollectionName " -ForegroundColor Yellow
                    Remove-CMDeviceCollection -Name "$CollectionName"  -Force
                    Write-Host "Collection $CollectionName is Deleted." -ForegroundColor Green
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
Remove-PCXCMCollection -CollectionName "InstallCollection" 
Remove-PCXCMCollection -CollectionName "AvailableCollection" 
Remove-PCXCMCollection -CollectionName "UninstallCollection" 
Remove-PCXCMCollection -CollectionName "ExceptionCollection" 
#>






