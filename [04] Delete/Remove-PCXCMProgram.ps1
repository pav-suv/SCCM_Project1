<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmprogram?view=sccm-ps

Syntax :
Remove-CMProgram
    -PackageId <String>
    -ProgramName <String>
    [-Force]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
Remove-CMProgram -PackageId $PackageID -ProgramName $ProgramName -Force

#>

# Function goes below
function Remove-PCXCMProgram{
     param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Id","PKGId")]
        [string]$PackageID,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Name","PrgmName")] 
        [string]$ProgramName
     )

Remove-CMProgram -PackageId $PackageID -ProgramName $ProgramName -Force
}

<# 
Usage example :
Remove-PCXCMProgram -PackageId "PS100051" -ProgramName "AvailableProgram"
#>






