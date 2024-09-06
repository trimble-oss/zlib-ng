
MSBuild.exe .. /p:Configuration=140-DebugCRT /p:Platform=x64
MSBuild.exe .. /p:Configuration=142-DebugCRT /p:Platform=x64
MSBuild.exe .. /p:Configuration=140-Release /p:Platform=x64
MSBuild.exe .. /p:Configuration=142-Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build+=1
echo %Build% >ver.txt

c:\work\nuget.exe pack -Version 2.0.7-technology-%Build% zlib-ng.nuspec
