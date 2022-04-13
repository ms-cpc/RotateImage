#Load required assemblies and get object reference
[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
dir *.jpg |
ForEach-Object {
 $image = [System.Drawing.image]::FromFile( $_ )
 $image.rotateflip("Rotate180FlipNone")
 $image.save($_)
}