﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.8f1.exe'
$checksum64     = '8fcf361cb04018e01d30b82d12438009b4437aefdb1bd1acd69df1fb57002fad'

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
