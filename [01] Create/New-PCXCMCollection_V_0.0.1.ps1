function New-PCXCMCollection{

    param (

        [Parameter(Mandatory=$true, Position=0, HelpMessage="Write Collection name as per the standard")]
        [ValidateLength (10,29)]
        [Alias("CLname", "collection", "name")]
        [string] $collectionname,            

        [parameter(Mandatory=$false, Position=1, HelpMessage="Type name of the collection which you want to limit.If you dont type anything then it will take 'All Systems' as Limiting Collection")]
        [string] $limitingcollection = "All Systems"

    )
        New-CMDeviceCollection -Name $collectionname -LimitingCollectionName $limitingcollection
        Write-Host "Collection created" -ForegroundColor Green
   
}

 New-PCXCMCollection -collectionname "7zip_2.0.0.0[Install]" 

 

 
