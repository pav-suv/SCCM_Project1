function New-PCXCMDeployment{
     param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $collectionname,
        [parameter(Mandatory=$true)] [string] $comment,
        [parameter(Mandatory=$true)] [string] $programname,
        [parameter(Mandatory=$true)] [string] $schedule,
        [parameter(Mandatory=$false)] [string] $deploypurpose

     )
     New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -ProgramName $programname -Comment $comment -DeployPurpose $deploypurpose 
}

New-PCXCMDeployment -packagename "PKG_7Zip_26.0.0.0" -collectionname "AAA-Available" -programname "AvailableProgram" -comment "PKG_7Zip Program" -deploypurpose "Available"     
New-PCXCMDeployment -packagename "PKG_7Zip_26.0.0.0" -collectionname "AAA-Install" -programname "InstallProgram" -comment "PKG_7Zip Program" -deploypurpose "Required " -schedule "NewScheduleDeadline"
New-PCXCMDeployment -packagename "PKG_7Zip_26.0.0.0" -collectionname "AAA-Uninstall" -programname "UninstallProgram" -comment "PKG_7Zip Program"  -deploypurpose "Required" -schedule "NewScheduleDeadline"

