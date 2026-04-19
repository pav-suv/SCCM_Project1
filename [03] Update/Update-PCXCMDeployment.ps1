<#
MS-Document : 


Syntax :


Direct Command :
    Set-CMPackageDeployment -DeviceProgramName $ProgramName -PackageName $PackageName

#>

# Function goes below
function Update-PCXCMPackageDeployment {
    param (
        $PackageName,
        $ProgramName
    )
    
    Set-CMPackageDeployment -DeviceProgramName $ProgramName -PackageName $PackageName
}

<# 
Usage example :
Update-PCXCMPackageDeployment -ProgramName "aaa" -PackageName "PKG_7zip_2.0.0" 
#>




    
