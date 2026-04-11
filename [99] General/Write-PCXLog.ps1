function Write-PCXLog {
    param (
        [parameter(mandatory=$false, Position=0)] [string]$Message,
        [parameter(mandatory=$false, Position=1)] [string]$Level = "INFO",
        [parameter(mandatory=$false, Position=2)] [string]$LogPath = "C:\Temp\PCXCM.log"
    )

    # Timestamp and log details
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "$timestamp [$Level] $Message"

    # Test and create folder if dosenot exist
    $logDir = Split-Path $LogPath
    if (!(Test-Path $logDir)) {
        New-Item -ItemType Directory -Path $logDir -Force | Out-Null
    }
    
    # Write information to the log file
    Write-Output $logEntry
    Add-Content -Path $LogPath -Value $logEntry
}

<#Usage Examle 
Write-PCXLog -Message "Hellowaaaa" -Level "Error" -LogPath "C:\Temp\PCXCM.log"
Write-PCXLog -Message "Idlivada" -Level "Warning" -LogPath "C:\Temp\PCXCM.log"
Write-PCXLog -Message "Mangalapuram" -Level "Warning" -LogPath "C:\Temp\PCXCM.log"
Write-PCXLog -Message "Hi" -Level "Warning"
Write-PCXLog -Message "Bye"
#>
