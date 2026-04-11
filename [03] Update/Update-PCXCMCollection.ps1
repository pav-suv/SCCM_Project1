function Update-PCXCMCollection {
    param (
        $collectionname,
        $comment
    )
    
    Set-CMDeviceCollection -Name $collectionname -Comment $Comment
}

Update-PCXCMCollection -collectionname "PKG_7zip_2.0.0" -comment "comment"