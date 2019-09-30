# This script acts as an entrypoint for executing all relevant scripts. It is designed for use in both development and CI/CD environments.
# For safety reasons, publishing of the module is designed to fail by default unless a repository is specified

[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$PublishRepository
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
# $VerbosePreference = 'Continue'

# Script constants
$script:scriptsDir = Join-Path $PSScriptRoot 'scripts'

$script:scriptBlock = {
    "Publish the module" | Write-Host
    & "$script:scriptsDir\publish-module.ps1" -Path $moduleManifestPath -Repository $PublishRepository | Out-Host
}

try {
    & $script:scriptBlock
}catch {
    throw
}
