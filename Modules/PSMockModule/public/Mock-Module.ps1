function Mock-Module {
    <#
    .SYNOPSIS
    A mock powershell module for templating and reference.

    .DESCRIPTION
    This is a description of a test module.

    .EXAMPLE
    Test-Module

    .INPUTS
    None

    .OUTPUTS
    None

    .NOTES
    None
    #>

    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Message
    )

    Write-Host $Message
}
