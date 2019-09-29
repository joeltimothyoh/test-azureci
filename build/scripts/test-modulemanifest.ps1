[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$Path
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Test the module manifest
$manifest = Test-ModuleManifest -Path $moduleManifestArgs['Path']
# Display the manifest
$manifest | Format-List -Property * | Out-String -Stream | Write-Verbose

# Return the manifest object
$manifest
