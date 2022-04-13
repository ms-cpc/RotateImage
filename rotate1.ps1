#Load required assemblies and get object reference
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");
$i = new-object System.Drawing.Bitmap("C"\fso\script.jpg");
#Display image properties including height and width
$i;
#Modify the image
$i.rotate.flip("Rotate180FlipNone");
#Save with the image in the desired format
$i.Save("c:\fso\script.jpg","JPG");