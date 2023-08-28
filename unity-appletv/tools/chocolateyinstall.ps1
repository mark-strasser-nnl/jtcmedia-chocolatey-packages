﻿$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = '945c2338d744abe576ea6fbee0962f6cfeb289c871ebb224810b88afb0042da8'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
