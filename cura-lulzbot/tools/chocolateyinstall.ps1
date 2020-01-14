﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/uploads/baeabfa19e27f4340db2c002cd0240e8/cura-lulzbot_3.6.20_win32.exe'
$checksum32 = '1dc773e824dfd1891fa614dfafa700e0ce29ca3e91bc23353b0119890770fbaa'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  softwareName  = 'cura-lulzbot*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
