[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$global:PesterDebugPreference_ShowFullErrors = $true

# Install Pester if needed
$pester = Get-Module Pester -ListAvailable -ErrorAction SilentlyContinue
if ( ! $pester -or $pester.Version.Major -lt 4 ) {
    Install-Module Pester -Force -Scope CurrentUser
}
Get-Module Pester -ListAvailable
