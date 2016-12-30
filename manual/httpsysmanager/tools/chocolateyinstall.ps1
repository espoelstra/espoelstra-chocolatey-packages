$ErrorActionPreference = 'Stop'

$packageName= 'httpsysmanager'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://httpsysmanager.codeplex.com/downloads/get/475350'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'httpsysmanager*'
  checksum      = 'B7DFFB7502042ECC8C7E9155CC4E3E8B6EE1FA1B29DB838F560A31C2FB1DCA17'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
