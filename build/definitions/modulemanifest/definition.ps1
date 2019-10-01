# - Initial release: Generate a unique GUID using New-GUID, and fill in all relevant details.
# - Subsequent releases: Update all relevant details.
# - To publish the module, git tag the commit to publish and push the tag.
# - You can run build.ps1 to simulate creating the module manifest and testing the module's exported functions etc. .

@{
    RootModule = 'PSMockModule.psm1'
    # ModuleVersion = ''                            # Will be overridden in the CD process.
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
        # PSData = @{                               # Leave the PSData block commented out until further notice
            Tags = @(
                'mock'
                'module'
                'template'
                'psgallery'
            )
            LicenseUri = 'https://github.com/joeltimothyoh/PSMockModule/blob/master/LICENSE'
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
