begin {
    $projectName = 'Get-SMARTReport'
}process {
    try {
        git clone "https://github.com/joeltimothyoh/$($projectName).git"; if ($?) { throw }
        Push-Location $projectName
        Get-Location
        Import-Module "./Modules/$($projectName)/Get-SMARTReport.psm1"
        Get-SMARTReport
    }catch {
        throw
    }
}