function Create-PCXCMPackage {
    param (
        [parameter(mandatory=$true, Position=0)] [string]$PackageName,
        [parameter(Mandatory=$false, Position=1)] [string]$company,
        [parameter(Mandatory=$false, Position=2)] [string]$version = "1.0.0",
        [parameter(Mandatory=$false, Position=3)] [string]$language = "EN-US",
        [parameter(mandatory=$false, Position=4)] [string]$Path = "\\192.168.25.214\Package_Source\",
        [parameter(mandatory=$false, Position=5)] [string]$Description = "Auto-created package"
    )

    Write-PCXLog "Starting package creation: $PackageName"

    try {
        $pkg = New-CMPackage -Name $packagename -Description $Description -Manufacturer $company -Version $version -Language $language -Path $path -ErrorAction Stop

        Write-PCXLog "Package created successfully: $PackageName"

        return $pkg
    }
    catch {
        Write-PCXLog "Failed to create package: $PackageName | Error: $_" "ERROR"
        throw
    }
}

<#Usage Example
Create-PCXCMPackage -packagename "PKGS_7zip_26.00" -company "Igor_Pavlov" -version "12.1.0" -language "EN-IN" -path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
Create-PCXCMPackage -packagename "PKGS_7zip_26.00" -company "Igor_Pavlov" -version "12.1.0" -language "EN-IN"
Create-PCXCMPackage -packagename "PKGS_7zip_26.00" -company "Igor_Pavlov" -version "12.1.0"
Create-PCXCMPackage -packagename "PKGS_7zip_26.00"

# IMPORTENT : Deletion commad just to retest it again so that we need not to delete from consolve
Remove-CMPackage -Name "PKGS_7zip_26.00"
#>


