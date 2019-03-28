Get-Location
git status
Get-ChildItem -Force | Format-Table
git clone https://github.com/joeltimothyoh/Get-SMARTReport.git
Push-Location Get-SMARTReport
Get-ChildItem -Force | Format-Table
Import-Module ./Modules/Get-SMARTReport/Get-SMARTReport.psm1
Get-SMARTReport