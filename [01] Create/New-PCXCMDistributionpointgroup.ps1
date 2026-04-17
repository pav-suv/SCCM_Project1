













function New-PCXCMDistributecontent {
     param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $distributionpointgroupname
     )
Start-CMContentDistribution -PackageName $packagename -DistributionPointGroupName $distributionpointgroupname
}


New-PCXCMDistributecontent -packagename "PKG_7zip_2.0.0_01" -distributionpointgroupname "ALL Mangalore Group"
