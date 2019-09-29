[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$Path
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Import the module using the manifest file
$manifest = Test-ModuleManifest -Path $Path
Import-Module -Name $Path -Force

# Display the module's properties
Get-Module -Name $manifest.Name | Format-List -Property * | Out-String -Stream | Write-Verbose

# Run tests
