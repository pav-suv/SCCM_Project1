
function New-PCXCMDistributecontent {
     param(
        [parameter(Mandatory=$true)] [string] $Packagename,
        [parameter(Mandatory=$true)] [string] $Distributionpointgroupname
     )
     begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Distributionpointgroupname : $Distributionpointgroupname " -ForegroundColor Yellow
                    Start-CMContentDistribution -PackageName $Packagename -DistributionPointGroupName $Distributionpointgroupname
                    Write-Host "Distributionpointgroupname $Distributionpointgroupname is created." -ForegroundColor Green
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
New-PCXCMDistributecontent -Packagename "PKG_7zip_2.0.0" -Distributionpointgroupname "ALL Mangalore Group"
