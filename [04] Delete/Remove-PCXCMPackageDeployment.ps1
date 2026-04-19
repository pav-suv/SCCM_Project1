<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmpackagedeployment?view=sccm-ps

Syntax :
Remove-CMPackageDeployment
    [-Name <String>]
    [-ProgramName <String>]
    [-Force]
    [-Collection <IResultObject>]
    [-CollectionId <String>]
    [-CollectionName <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
     Remove-CMPackageDeployment -Name $packagename -ProgramName $programname -Force

#>

# Function goes below
function Remove-PCXCMPackageDeployment{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","PKGName")]
        [string] $PackageName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Nmae", "PgmName")]
        [string] $ProgramName
        )
        
     Remove-CMPackageDeployment -Name $PackageName -ProgramName $ProgramName -Force
}

<# 
Usage example :
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -ProgramName "AvailableProgram"
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -programName "InstallProgram"
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -programName "UninstallProgram"
#>










<#

    #>



    
