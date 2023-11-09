﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = 'b79cdcdc56e74bcefa55c83b8c1182de451c0ad87e7056a5370025cb8b2c1aed'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
