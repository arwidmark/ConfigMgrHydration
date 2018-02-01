<#

************************************************************************************************************************

Created:	2015-03-01
Version:	1.1

Disclaimer:
This script is provided "AS IS" with no warranties, confers no rights and 
is not supported by the author or DeploymentArtist.

Author - Johan Arwidmark
    Twitter: @jarwidmark
    Blog   : http://deploymentresearch.com

************************************************************************************************************************

#>

# Validation
if (!(Test-Path -path C:\Setup\SQL2012\setup.exe)) {Write-Warning "Could not find SQL Server 2012 setup files, aborting...";Break}
if (!(Test-Path -path C:\Setup\Scripts\HYDSQL2012Unattend.ini)) {Write-Warning "Could not find SQL Server 2012 Unattend file, aborting...";Break}
if (!(Test-Path -path G:\)) {Write-Warning "Could not find SQL TempDB Volume, aborting...";Break}
if (!(Test-Path -path H:\)) {Write-Warning "Could not find SQL DB Volume, aborting...";Break}
if (!(Test-Path -path I:\)) {Write-Warning "Could not find SQL Logs Volume, aborting...";Break}

# Install SQL
& C:\Setup\SQL2012\setup.exe /configurationfile=C:\Setup\Scripts\HYDSQL2012Unattend.ini