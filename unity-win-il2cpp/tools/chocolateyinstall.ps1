﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = 'a1012252293fcb75554590be18629d9e89ad55e5b469c987cfaf3fb50b7a5c40'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
