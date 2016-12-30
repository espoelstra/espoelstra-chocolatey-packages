$ErrorActionPreference = 'Stop'

$packageName= 'httpsysmanager'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://httpsysmanager.codeplex.com/downloads/get/475350'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'httpsysmanager*'
  checksum      = ''
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
