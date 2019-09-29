[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$Path
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (!$env:MODULE_VERSION) {
    "Module version is null. Not publishing module." | Write-Warning
    return
}

"Version: $env:MODULE_VERSION"
$manifest = Test-ModuleManifest -Path $Path

# Publish the module
"Publishing module: '$($manifest.Name)'" | Write-Host
