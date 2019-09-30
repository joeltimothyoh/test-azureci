# This script acts as an entrypoint for executing all relevant scripts. It is designed for use in both development and CI/CD environments.

[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
# $VerbosePreference = 'Continue'

# Script constants
$script:scriptsDir = Join-Path $PSScriptRoot 'scripts'

$script:scriptBlock = {
    "Install Dependencies" | Write-Host
    & "$script:scriptsDir\install-dependencies.ps1" | Out-Host

    "Generate the module manifest" | Write-Host
    $manifest = & "$script:scriptsDir\generate-modulemanifest.ps1"
    $moduleManifestPath = $manifest.Fullname

    "Test the module manifest" | Write-Host
    & "$script:scriptsDir\test-modulemanifest.ps1" -Path $moduleManifestPath | Out-Host

    "Test the module" | Write-Host
    & "$script:scriptsDir\test-module.ps1" -Path $moduleManifestPath | Out-Host
}

try {
    & $script:scriptBlock
}catch {
    throw
}
