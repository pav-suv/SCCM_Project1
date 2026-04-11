function Read-PCXCMProgram { 
    param(
        [parameter(mandatory=$true)] [string] $programname
    )
    
    Get-CMProgram -ProgramName $programname
}


 Read-PCXCMProgram -programname "AvailableProgram"