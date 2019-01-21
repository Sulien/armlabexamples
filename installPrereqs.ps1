<#
 .SYNOPSIS
    Install required modules for the DSC

 .DESCRIPTION
    Installs the following DSCs:
    xPSDesiredStateConfiguration

 .AUTHOR
 Vic Perdana - me@vicperdana.com
#>

Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name xPSDesiredStateConfiguration -Force