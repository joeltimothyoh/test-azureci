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
Get-Module -Name $manifest.Name | Format-List -Property * | Out-String | Write-Verbose

# Run tests
# $script:superProjectDirRaw = git rev-parse --show-superproject-working-tree
# if ($script:superProjectDirRaw) {
#     $script:superProjectDir = Convert-Path -Path $script:superProjectDirRaw
# }else {
#     throw "Super project root directory could not be determined."
# }
# $script:testsDir = Join-Path $script:superProjectDir 'tests'
# & "$script:testsDir\test.ps1"
