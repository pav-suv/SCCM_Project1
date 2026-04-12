function Read-PCXCMProgram { 
    param(
        [parameter(mandatory=$true)] [string] $programname
    )
    
    Get-CMProgram -ProgramName $programname
}


 Read-PCXCMProgram -programname "AvailableProgram"
 Read-PCXCMProgram -programname "InstallProgram"
 Read-PCXCMProgram -programname "UninstallProgram"
 