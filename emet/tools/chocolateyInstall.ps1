$packageName = 'emet'
$installerType = 'MSI' 
$url = 'http://download.microsoft.com/download/A/A/8/AA853FAE-7608-462E-B166-45B0F065BA13/EMET%20Setup.msi' # download url
$silentArgs = '/quiet' 
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes


