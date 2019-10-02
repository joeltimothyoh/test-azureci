[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$global:PesterDebugPreference_ShowFullErrors = $true
$ErrorActionPreference = 'Stop'

"Installing dependencies" | Write-Host
# Install Pester if needed
$pester = Get-Module Pester -ListAvailable -ErrorAction SilentlyContinue
if ( ! $pester -or $pester.Version.Major -lt 4 ) {
    Install-Module Pester -Force -Scope CurrentUser
}
Get-Module Pester -ListAvailable

# Begin tests
"`nBegin tests" | Write-Host
try {
    Mock-Function1 -Verbose
    Mock-Function2 -Verbose

}catch {
    throw
}
