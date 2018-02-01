/************************************************************************************************************************

Created:	2015-03-01
Version:	1.1
Homepage:    	http://deploymentfundamentals.com

Disclaimer:
This script is provided "AS IS" with no warranties, confers no rights and 
is not supported by the authors or DeploymentArtist.

Author - Johan Arwidmark
    Twitter: @jarwidmark
    Blog   : http://deploymentresearch.com

************************************************************************************************************************/

Use master
ALTER DATABASE tempdb
MODIFY FILE (NAME = tempdev, FILENAME = 'E:\SQLTMP\tempdb.mdf',
SIZE = 4096MB,
MAXSIZE = 10240MB,
FILEGROWTH = 1024MB)
GO
ALTER DATABASE tempdb
ADD FILE (NAME = tempdb_2, FILENAME = 'E:\SQLTMP\tempdb_2.mdf', SIZE = 4096MB, MAXSIZE=10240MB, FILEGROWTH = 1024MB) 
ALTER DATABASE tempdb 
ADD FILE (NAME = tempdb_3, FILENAME = 'E:\SQLTMP\tempdb_3.mdf', SIZE = 4096MB, MAXSIZE=10240MB, FILEGROWTH = 1024MB) 
ALTER DATABASE tempdb 
ADD FILE (NAME = tempdb_4, FILENAME = 'E:\SQLTMP\tempdb_4.mdf', SIZE = 4096MB, MAXSIZE=10240MB, FILEGROWTH = 1024MB) 
GO