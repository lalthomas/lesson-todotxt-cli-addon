@echo OFF 	
REM File : lesson run.bat 	
REM Creation Date : 2017-04-04 	
REM Author : Lal Thomas 		
	

IF [%1] == [] GOTO :SETFILE
set file=%1
GOTO :EXECUTE

:SETFILE
set file="D:\project\20170404-lesson todotxt cli addon\lesson"
GOTO :EXECUTE

REM Section
:EXECUTE
call :COMPILE %file%
call :OUTPUT %file%
exit

REM Sub Routine
:COMPILE
%~d0
cd "%~p0"
set scriptFolderPathFull=%~dp0%
set scriptFolderPath=%scriptFolderPathFull:~0,-1%
pushd "%userProfile%\.todo.actions.d"
echo "%scriptFolderPath%"
mklink /d lesson "%scriptFolderPath%"
popd
exit /b 0

:OUTPUT
explorer "build\%~nx1"
exit /b 0
