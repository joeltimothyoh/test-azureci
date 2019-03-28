begin {
    $projectName = 'Get-SMARTReport'
}process {
    try {
        # Clone project
        git clone "https://github.com/joeltimothyoh/$($projectName).git"; if ($LASTEXITCODE) { throw }
        Push-Location $projectName
        Get-ChildItem -Force | Format-Table
        # Test project
        Import-Module "./Modules/$($projectName)/Get-SMARTReport.psm1"
        Get-SMARTReport
    }catch {
        throw
    }
}