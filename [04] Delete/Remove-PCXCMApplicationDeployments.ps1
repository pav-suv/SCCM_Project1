function Remove-Deployments{
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $Collectionname
        
    )
Remove-CMApplicationDeployment -Name "$name" -CollectionName "$Collectionname"

}

Remove-Deployments -Name "APS_7yZip" -CollectionName "InstallCollection"
Remove-Deployments -Name "APS_7Zip" -CollectionName "AvailableCollection" 
Remove-Deployments -Name "APS_7Zip" -CollectionName "UninstallCollection"