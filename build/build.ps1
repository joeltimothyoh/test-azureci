# This script acts as an entrypoint for executing all relevant scripts. It is designed for use in both development and CI/CD environments.
# For safety reasons, publishing of the module is designed to fail by default unless a repository is specified, though not specifying one does not prevent prior steps from running.

[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [string]$PublishRepository
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

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

    "Publish the module" | Write-Host
    & "$script:scriptsDir\publish-module.ps1" -Path $moduleManifestPath -Repository $PublishRepository | Out-Host
}

try {
    & $script:scriptBlock
}catch {
    throw
}
