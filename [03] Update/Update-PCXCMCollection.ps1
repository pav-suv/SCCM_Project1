<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmcollection?view=sccm-ps

Syntax :
Set-CMCollection
    -Name <String>
    [-Comment <String>]
    [-LimitingCollection <IResultObject>]
    [-LimitingCollectionId <String>]
    [-LimitingCollectionName <String>]
    [-NewName <String>]
    [-PassThru]
    [-RefreshSchedule <IResultObject>]
    [-RefreshType <CollectionRefreshType>]
    [-VariablePriority <Int32>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command :
    Set-CMDeviceCollection -Name $CollectionName -Comment $Comment

#>

# Function goes below
function Update-PCXCMCollection {
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [Alias("Name", "CLName")]
        [String] $CollectionName,

        [Parameter(Mandatory=$true, Position=1)]
        [Alias("Name", "Discription")]
        [String] $comment   
    )
    
    Set-CMDeviceCollection -Name $CollectionName -Comment $Comment
}

<# 
Usage example :
Update-PCXCMCollection -CollectionName "PKG_7zip_2.0.0" -Comment "Comment"

#>







