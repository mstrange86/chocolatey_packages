$packageName = 'emet'
$installerType = 'MSI' 
$url = 'http://download.microsoft.com/download/7/0/A/70AF5150-10DD-4838-ACFC-C4390B05620A/EMET%205.2%20Setup.msi' # download url
$silentArgs = '/quiet' 
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes


