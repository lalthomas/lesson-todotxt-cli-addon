@echo OFF 	
REM File : lesson run.bat 	
REM Creation Date : 2017-04-04 	
REM Author : Lal Thomas 	
REM Original File : D:\Dropbox\project\20170404-lesson todotxt cli addon\lesson 	
	

IF [%1] == [] GOTO :SETFILE
set file=%1
GOTO :EXECUTE

:SETFILE
set file="D:\Dropbox\project\20170404-lesson todotxt cli addon\lesson"
GOTO :EXECUTE

REM Section
:EXECUTE
call :COMPILE %file%
call :OUTPUT %file%
exit

REM Sub Routine
:COMPILE

exit /b 0

:OUTPUT
explorer "build\%~nx1"
exit /b 0
