
$ErrorActionPreference = 'Stop';


$packageName= 'emet'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/8/E/E/8EEFD9FC-46B1-4A8B-9B5D-13B4365F8CA0/EMET%20Setup.msi'

# tests fail with the log unable to write to the disk unless we explicitly make the directory
$logroot = "$env:TEMP\chocolatey\$packageName\"
mkdir -Force $logroot           # force is to avoid already-exists error case

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$logroot\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'EMET*'
  checksum      = '9402c51896e9e32eeacffdb490d27285'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs

















