<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmapplication?view=sccm-ps

Syntax :
Remove-CMApplication
    [-Name] <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
 Remove-CMApplication -ApplicationName "$Name" -Force

#>

# Function goes below
function Remove-PCXCMApplication{
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("AppName","ApplicationName")]
         [string] $Name   
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Application : $Name " -ForegroundColor Yellow
                    Remove-CMApplication -ApplicationName "$Name" -Force
                    Write-Host "Application $Name is Deleted." -ForegroundColor Green
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
 Remove-PCXCMApplication -Name "APS_7Zip" 
#>