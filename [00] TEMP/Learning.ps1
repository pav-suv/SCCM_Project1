function New-PCXCMCollection {
    param (
        [Parameter(Mandatory=$true)][String]$CollectionName,
        [Parameter(Mandatory=$false)][string]$LimitingCollection = "All systems"
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Now we are going to create collection $CollectionName" -ForegroundColor Yellow
                    Write-Host "Ha ha ha ha;;;;;;;;;;;;;;;;;;;;;;; Lets try" -ForegroundColor DarkGreen
                    New-CMDeviceCollection -Name $CollectionName -LimitingCollectionName $LimitingCollection
                    Write-Host "Collection $CollectionName is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly Hi HI HI................."  -ForegroundColor Magenta
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

New-PCXCMCollection -CollectionName "Hello7"

####################################################