# - Initial release: Run 'New-GUID' to generate a unique GUID for identifying the module on PSGallery. Then fill in all other relevant details.
# - Subsequent releases: Update all relevant details.
# - To publish the module, tag the commit that is to be published and push the tag.
# - You can use Invoke-PSModulePublisher.ps1 in your development environment to simulate generation of the manifest.

@{
    RootModule = 'PSMockModule.psm1'
    # ModuleVersion = ''                            # Value will be set on a release based on the release tag. Defaults to '0.0.0' in development environments and regular CI builds
    GUID = '28f9907f-c22c-4139-a7d8-227cfc4dc778'
    Author = 'Joel Timothy Oh'
    CompanyName = 'Joel Timothy Oh'
    Copyright = '(c) 2019 Joel Timothy Oh.'
    Description = 'A mock powershell module for templating and reference.'
    PowerShellVersion = '3.0'
    # PowerShellHostName = ''
    # PowerShellHostVersion = ''
    # DotNetFrameworkVersion = ''
    # CLRVersion = ''
    # ProcessorArchitecture = ''
    # RequiredModules = @()
    # RequiredAssemblies = @()
    # ScriptsToProcess = @()
    # TypesToProcess = @()
    # FormatsToProcess = @()
    # NestedModules = @()
    FunctionsToExport = @(
        'Mock-Function1'
        'Mock-Function2'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()
    # DscResourcesToExport = @()
    # ModuleList = @()
    # FileList = @()
    PrivateData = @{
        # PSData = @{           # Properties within PSData will be correctly added to the manifest via Update-ModuleManifest without the PSData key. Leave the key commented out.
            Tags = @(
                'mock'
                'module'
                'template'
                'psgallery'
            )
            LicenseUri = 'https://raw.githubusercontent.com/joeltimothyoh/PSMockModule/master/LICENSE'
            ProjectUri = 'https://github.com/joeltimothyoh/PSMockModule'
            # IconUri = ''
            # ReleaseNotes = ''
            # Prerelease = ''
            # RequireLicenseAcceptance = $false
            # ExternalModuleDependencies = @()
        # }
        # HelpInfoURI = ''
        # DefaultCommandPrefix = ''
    }
}
