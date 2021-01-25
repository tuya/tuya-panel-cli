#!/usr/bin/env pwsh
# Copyright 2020 tuya. All rights reserved. MIT license.
# TODO(everyone): Keep this script simple and easily auditable.

$ErrorActionPreference = 'Stop'

if ($v) {
  $Version = "v${v}"
}
if ($args.Length -eq 1) {
  $Version = $args.Get(0)
}

$TuyaInstall = $env:TUYA_INSTALL
$BinDir = if ($TuyaInstall) {
  "$TuyaInstall\bin"
} else {
  "$Home\.tuya\bin"
}

$TpcZip = "$BinDir\tpc.zip"
$TpcExe = "$BinDir\tpc.exe"
$Target = 'x86_64-pc-windows-msvc'

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$TpcUri = if (!$Version) {
  "https://github.com/youngjuning/tpc/releases/latest/download/tpc-${Target}.zip"
} else {
  "https://github.com/youngjuning/tpc/releases/download/${Version}/tpc-${Target}.zip"
}

if (!(Test-Path $BinDir)) {
  New-Item $BinDir -ItemType Directory | Out-Null
}

Invoke-WebRequest $TpcUri -OutFile $TpcZip -UseBasicParsing

if (Get-Command Expand-Archive -ErrorAction SilentlyContinue) {
  Expand-Archive $TpcZip -Destination $BinDir -Force
} else {
  if (Test-Path $TpcExe) {
    Remove-Item $TpcExe
  }
  Add-Type -AssemblyName System.IO.Compression.FileSystem
  [IO.Compression.ZipFile]::ExtractToDirectory($TpcZip, $BinDir)
}

Remove-Item $TpcZip

$User = [EnvironmentVariableTarget]::User
$Path = [Environment]::GetEnvironmentVariable('Path', $User)
if (!(";$Path;".ToLower() -like "*;$BinDir;*".ToLower())) {
  [Environment]::SetEnvironmentVariable('Path', "$Path;$BinDir", $User)
  $Env:Path += ";$BinDir"
}

Write-Output "Tpc was installed successfully to $TpcExe"
Write-Output "Run 'tpc --help' to get started"
