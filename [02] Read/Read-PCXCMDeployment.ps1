function Read-PCXCMDeployment { 
    param(
        [parameter(mandatory=$true)] [string] $distributionpoint
        
    )
    
     Get-CMDeploymentPackage -DistributionPointName $distributionpoint
}


 Read-PCXCMDeployment -distributionpoint "CM01.CORP.PCXLAB.COM"