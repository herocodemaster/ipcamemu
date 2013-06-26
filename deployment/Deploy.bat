@echo off
echo Have you changed version in IpCamEmu-Setup.iss file?
pause

if exist ..\output rd ..\output /S /Q
if exist output rd output /S /Q
md ..\output
md output

set msBuild=%windir%\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe
set configuration=Release
set target=Rebuild

SET Operation=Build
"%msbuild%" "..\src\HDE.IpCamEmu.sln" ^
	/Target:"%target%" ^
	/p:Configuration="%configuration%"
if %ERRORLEVEL% NEQ 0 GOTO FAILED_OPERATION;


SET Operation=Prepare setup
"c:\Program Files (x86)\Inno Setup 5\ISCC" IpCamEmu-Setup.iss
if %ERRORLEVEL% NEQ 0 GOTO FAILED_OPERATION;


SET ZipSolution=C:\Program Files (x86)\ZipSolution-6.0\ZipSolution.Console.exe
SET Operation=Package binaries
"%ZipSolution%" "SolutionFile=binaries.xml" "ExtractVersionFromAssemblyFile=..\Output\HDE.IpCamEmu.Core.dll"
if %ERRORLEVEL% NEQ 0 GOTO FAILED_OPERATION;

SET Operation=Package sources
"%ZipSolution%" "SolutionFile=sources.xml" "ExtractVersionFromAssemblyInfoCsFile=..\src\IpCamEmu.Core\Properties\AssemblyInfo.cs"
if %ERRORLEVEL% NEQ 0 GOTO FAILED_OPERATION;

goto ZipSolutionSourcesEnd

:FAILED_OPERATION
echo FAILED: %Operation% 
pause
goto ZipSolutionSourcesEnd

:ZipSolutionSourcesEnd
@echo on