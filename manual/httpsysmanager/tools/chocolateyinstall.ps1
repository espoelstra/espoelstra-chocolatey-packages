$ErrorActionPreference = 'Stop'

$packageName= 'httpsysmanager'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://httpsysmanager.codeplex.com/downloads/get/475350'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'httpsysmanager*'
  checksum      = 'FBB36B445051EB40324ED81EA627B90F7F8FCE82F336531B8C2031C798088106'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
