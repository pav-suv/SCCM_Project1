<#
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
    #>



    function Remove-PCXCMPackageDeployment{
     param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $programname
     )

     Remove-CMPackageDeployment -Name $packagename -ProgramName $programname -Force


    }
Remove-PCXCMPackageDeployment -packagename"PKG_7zip_2.0.0" -programname "AvailableProgram"
Remove-PCXCMPackageDeployment -packagename"PKG_7zip_2.0.0" -programname "InstallProgram"
Remove-PCXCMPackageDeployment -packagename"PKG_7zip_2.0.0" -programname "UninstallProgram"

