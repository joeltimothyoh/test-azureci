try {
    $projectName = 'Get-SMARTReport'
    git clone "https://github.com/joeltimothyoh/$($projectName).git"; if ($LASTEXITCODE) { throw }
    Push-Location $projectName
    Get-Location
    Import-Module "./Modules/$($projectName)/Get-SMARTReport.psm1"
    Get-SMARTReport
}catch {
    throw
}