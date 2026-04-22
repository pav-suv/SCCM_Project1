# SCCM Pakcage Deployment
# Function section :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
function New-PCXCMPackage{
param (
        [parameter(Mandatory=$true, Position=0, HelpMessage = "Enter the package name properly!!!")] 
        [ValidateNotNullOrEmpty()]         
        [Alias("Name","Pkg","Package","PkgName")] 
        [string]$Packagename,

        [parameter(Mandatory=$true, Position=1, HelpMessage = "Enter the Company name properly!!!")] 
        [ValidateLength(3,50)]             
        [Alias("Comp")] [string]$Company,

        [parameter(Mandatory=$true, Position=2, HelpMessage = "What is the version boss!!!")]        
        [ValidatePattern('^\d+(\.\d+)*$')] 
        [Alias("Ver")]  
        [string]$Version,

        [parameter(Mandatory=$false, Position=3, HelpMessage = "Ov Base maraya sari panla")]          
        [ValidateSet("EN-US","EN-GB","FR-FR","DE-DE")] 
        [Alias("Lang")]
        [string]$Language = "EN-US",

        [parameter(Mandatory=$true, Position=4, HelpMessage = "Masala Dose ? Chatni kodi maraya")]   
        [Alias("Location")]
        [string]$Path
     )

     begin{
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow

     }
     process{
        try {
            # assing packag object to variable

            $Package = Get-CMPackage -Name $Packagename

            # If condition to check and proceed with packae creation
            if ($Package -ne $null) 
                {
                    Write-Host "Pacckage $Packagename   is alrady there we will not create it again" -ForegroundColor Yellow
                    throw
                } 
            else {
                Write-Host "Pakcage not there we will create it now" -ForegroundColor Green
                # Crete paakge 
                New-CMPackage -Name $Packagename -Manufacturer $Company -Version $Version -Language $Language -Path $Path       
                }

        }
        catch {
            <#Do this if a terminating exception happens#>
            Write-Host $_ -ForegroundColor Blue
        }
        finally {
            <#Do this after the try block regardless of whether an exception occurred or not#>
            Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan

        }
     }
     end{
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
     }
           
}

#Creation of collection
function New-PCXCMCollection{
    param (
        [Parameter(Mandatory=$true, Position=0, HelpMessage="Write Collection name as per the standard")]
        [ValidateLength (10,29)]
        [Alias("CLname", "Collection", "Name")]
        [string] $CollectionName,            

        [parameter(Mandatory=$false, Position=1, HelpMessage="Type name of the collection which you want to limit.If you dont type anything then it will take 'All Systems' as Limiting Collection")]
        [string] $LimitingCollection = "All Systems"
    )
    
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Now we are going to create collection $CollectionName" -ForegroundColor Yellow
                    New-CMDeviceCollection -Name $CollectionName -LimitingCollectionName $LimitingCollection
                    Write-Host "Collection $CollectionName is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly Created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }

                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }

    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow

    }
}  

#creation of program
function New-PCXCMProgram{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [Alias("Name", "PKGName")]
        [string] $Packagename,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("PrgName")]
        [string] $ProgramName,

        [parameter(Mandatory=$true, Position=2)]
        [Alias("Coommandline", "CMD")]
         [string] $Commandline
    )
begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are creating new Program : $ProgramName " -ForegroundColor Yellow
                    New-CMProgram -PackageName $Packagename -StandardProgramName $ProgramName -CommandLine $Commandline -RunMode RunWithAdministrativeRights -ProgramRunType WhetherOrNotUserIsLoggedOn


                    Write-Host "ProgramName $ProgramName is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }
                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}
#Creation if deployment
function New-PCXCMDeployment{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Pkgname")]
        [string] $Packagename,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("CLName")]
        [string] $Collectionname,

        [parameter(Mandatory=$false, Position=2)] 
        [Alias("Description")]
        [string] $Comment,

        [parameter(Mandatory=$true, Position=3)] 
        [Alias("Pgname")]
        [string] $Programname,

        [parameter(Mandatory=$true, Position=4)]
        [Alias("Purpose")]
        [string] $deploypurpose,

        [parameter(Mandatory=$false, Position=5)] 
        [Alias("Shedule")]
        $schedule,

        [parameter(Mandatory=$false, Position=6)] 
        [Alias("Time")]
        [DateTime]$DeadlineTime,

        [parameter(Mandatory=$false, Position=7)] 
        [Alias("Deadline")]
        [array]$NewScheduleDeadline
        
     )
     # Date Time calculation 
      $DeadlineTime = (Get-Date -Hour 23 -Minute 0 -Second 0).AddDays(15)
      $NewScheduleDeadline = New-CMSchedule  -Start $DeadlineTime -Nonrecurring

      <#
      #$schedule
      $DeadlineTime.GetType()
      $NewScheduleDeadline.GetType()
      #$schedule.GetType()
      #>
      
      # Command
      #New-CMPackageDeployment -StandardProgram -PackageName $packagename -CollectionName $collectionname -ProgramName $programname -Comment $comment 
      #New-CMPackageDeployment -StandardProgram -PackageName "PKG_7zip_2.0.0_01" -CollectionName "PKG_7zip_2.0.0_01[Install]" -DeployPurpose Required -ProgramName "InstallProgram"  -Schedule $NewScheduleDeadline
      New-CMPackageDeployment -StandardProgram -PackageName $Packagename -CollectionName $Collectionname -DeployPurpose $deploypurpose -ProgramName $Programname  -Schedule $NewScheduleDeadline 
}
#Include collection
function New-PCXCMIncludeCollection{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [string] $CollectionName,

        [parameter(Mandatory=$true)] 
        [string] $IncludeCollection
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding IncludeCollection : $IncludeCollection " -ForegroundColor Yellow
                    Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName -IncludeCollectionName $IncludeCollection
                    Write-Host "IncludeCollection $IncludeCollection is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }
                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}
#Exclude Collection
function New-PCXCMExcludeCollection{
    param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Collection", "CLName")]
         [string] $CollectionName,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("ExCollection","Exclude")]
        [string] $ExcludeCollection
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding ExcludeCollection : $ExcludeCollectio " -ForegroundColor Yellow
                    Add-CMDeviceCollectionExcludeMembershipRule -CollectionName $CollectionName -ExcludeCollectionName $ExcludeCollection
                    Write-Host "ExcludeCollection $ExcludeCollectio is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }
                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}

#Distrubutionpointgroupname
function New-PCXCMDistributecontent{
     param(
        [parameter(Mandatory=$true)] [string] $Packagename,
        [parameter(Mandatory=$true)] [string] $Distributionpointgroupname
     )
     begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "Distributionpointgroupname : $Distributionpointgroupname " -ForegroundColor Yellow
                    Start-CMContentDistribution -PackageName $Packagename -DistributionPointGroupName $Distributionpointgroupname
                    Write-Host "Distributionpointgroupname $Distributionpointgroupname is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
                }
                catch {
                    Write-Host $_ -ForegroundColor Red
                }
                finally {
                    <#Do this after the try block regardless of whether an exception occurred or not#>
                    Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
                }
    }
    end {
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}

# Function calling :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
function main {
    [CmdletBinding()]
    param (
        [parameter(mandatory=$false)] [string] $Language = "EN-US",
        [parameter(mandatory=$true)] [string] $Path,
        [parameter(mandatory=$false)] [string] $LimitingCollectionName = "ALL Systems",
        [parameter(mandatory=$false)] [string] $DistributionPoinGroupName = "ALL Mangalore Group",
        [parameter(mandatory=$false)] [datetime] $DeadlineTime
    )
        
# ---------------------------------------
  Clear-Host

  # Calculations for package name
  Clear-Host

    # ---------------------------------------
    # Extract package details from given path
    # ---------------------------------------
    $pathSPlit = $Path -split "\\"

    $Packagename = $pathSPlit[-1]
    $Company     = $pathSPlit[-3]
    $Product     = $pathSPlit[-2]

    #----------------------------------------
    # Package naming standards
    #----------------------------------------
    $Packagename = "PKG_"+ $Packagename 



    # ---------------------------------------
    # Extract version from package name
    # ---------------------------------------
    $VersionSPlit = $Packagename -split "_"
    $Version      = $VersionSPlit[-1]

    Write-Host "Version: $Version" -ForegroundColor Green

    # ---------------------------------------
        # Generate program names
        # ---------------------------------------
        $ProgramName1 = $Packagename + "[AVAILABLE]"
        $ProgramName2 = $Packagename + "[INSTALL]"
        $ProgramName3 = $Packagename + "[UNINSTALL]"

        Write-Host "ProgramName1: $ProgramName1" -ForegroundColor Green
        Write-Host "ProgramName2: $ProgramName2" -ForegroundColor Green
        Write-Host "ProgramName3: $ProgramName3" -ForegroundColor Green

        # ---------------------------------------
        # Generate collection names
        # ---------------------------------------
        $CollectionName1 = $Packagename + "[AVAILABLE]"
        $CollectionName2 = $Packagename + "[INSTALL]"
        $CollectionName3 = $Packagename + "[UNINSTALL]"
        $CollectionName4 = $Packagename + "[EXCEPTION]"

        Write-Host "CollectionName1: $CollectionName1" -ForegroundColor Green
        Write-Host "CollectionName2: $CollectionName2" -ForegroundColor Green
        Write-Host "CollectionName3: $CollectionName3" -ForegroundColor Green
        Write-Host "CollectionName4: $CollectionName4" -ForegroundColor Green

        #------------------------------------------------
    # Preparing Install command line
    #------------------------------------------------
    #$path = "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0"

    # Just changing location to get he foler file informations from SCCM Drive to System Drive
    Set-Location C:\
    $File = Get-ChildItem -Path $path
    #$File.Name
    $FileName = $File.Name
    # Changing back to SCCM DRIve
    Set-Location "$($SiteCode):\" @initParams

    $ProgramInstallCommandline = "$FileName "+"/S"
    Write-Host "ProgramInstallCommandline: $ProgramInstallCommandline" -ForegroundColor Green

    # ---------------------------------------
    # Create commandlines (Available / Install / Uninstall)
    # --------------------------------------

    $UninstallCommand = $Path + "\Uninstall.exe  /S"

    # ---------------------------------------
    # Deploy programs to collections
    # ---------------------------------------
    
    
    $ProgramComment = $Packagename + " Program"

    # Create deadline schedule (default: today 8 PM + 10 days)
    $DeadlineTime        = (Get-Date -Hour 20 -Minute 0 -Second 0).AddDays(10)
    $NewScheduleDeadline = New-CMSchedule -Start $DeadlineTime -Nonrecurring

   # -----------------------------------------------------------------------------------------------------------------
    New-PCXCMPackage -Packagename $Packagename -Company "Igor_Pavlov" -Version "2.0.0" -Language "EN-US" -Path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7zip\7zip_2.0.0"
    New-PCXCMCollection -CollectionName $CollectionName1 
    New-PCXCMCollection -CollectionName $CollectionName2 
    New-PCXCMCollection -CollectionName $CollectionName3
    New-PCXCMCollection -CollectionName $CollectionName4
    New-PCXCMProgram -Packagename $Packagename -Programname $ProgramName1 -Commandline "ProgramInstall"
    New-PCXCMProgram -Packagename $Packagename -Programname $ProgramName2 -Commandline "ProgramInstall"
    New-PCXCMProgram -Packagename $Packagename -Programname $ProgramName3 -Commandline "ProgramUnInstall"
    New-PCXCMDistributecontent -Packagename $Packagename -Distributionpointgroupname "ALL Mangalore Group"
    New-PCXCMDeployment -Packagename $Packagename -Collectionname $CollectionName1  -Programname "AvailableProgram" -Comment "PKG_7Zip Program" -deploypurpose "Available"                    
    New-PCXCMDeployment -packagename $Packagename-collectionname $CollectionName2  -programname "InstallProgram" -comment "PKG_7Zip Program" -deploypurpose "Required " -schedule "NewScheduleDeadline"
    New-PCXCMDeployment -packagename $Packagename -collectionname $CollectionName3  -programname "UninstallProgram" -comment "PKG_7Zip Program"  -deploypurpose "Required" -schedule "NewScheduleDeadline"
    New-PCXCMIncludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -IncludeCollection "PKG_7zip_2.0.0_01[Available]"
    New-PCXCMExcludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -ExcludeCollection "PKG_7zip_2.0.0_01[Exception]"

}
main #-Path \\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0
