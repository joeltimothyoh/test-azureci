[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Install PowershellGet module of the specified version
$powershellGetRequiredVersion = '2.1.2'
$powershellGetInstalledVersions = (Get-Module PowerShellGet -ListAvailable).Version | % { $_.ToString() }
if ($powershellGetRequiredVersion -notin $powershellGetInstalledVersions) {
    Install-Module -Name PowershellGet -Repository 'PSGallery' -RequiredVersion $powershellGetRequiredVersion -Scope CurrentUser -Force -Verbose
}
# Import and get info on PowershellGet
Import-Module -Name PowerShellGet -RequiredVersion $powershellGetRequiredVersion -Force -Verbose
Get-Module -Name PowerShellGet -ListAvailable
