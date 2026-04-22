
function New-PCXCMCollection {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [Alias("Name")]
        [string] $CollectionName,            

        [Parameter(Mandatory=$false)]
        [Alias("Limiting")]
        [string] $LimitingCollection = "All Systems"
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }
    process {
        try {
            Write-Host "Now we are going to create collection $CollectionName" -ForegroundColor Yellow
            #if (1 -eq 2){
            #if (CollectionName $_){
            #$CollectionTest = Get-CMDeviceCollection -Name $CollectionName

            #if ($CollectionTest -ne $null){
            #    throw "Ha ha ha..."
            #    }

            New-CMDeviceCollection -Name $CollectionName -LimitingCollectionName $LimitingCollection -ErrorAction Stop
            Write-Host "Collection $CollectionName is created." -ForegroundColor Green
            Write-Host "We tried and successfully created................." -ForegroundColor Magenta
        }
        catch {
            Write-Error $_.Exception.Message
            #throw
        }
        finally {
            Write-Host "This finally block runs for both success and failure" -ForegroundColor Cyan
        }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com" -ForegroundColor Yellow
    }
}

New-PCXCMCollection -CollectionName "Coll1"
