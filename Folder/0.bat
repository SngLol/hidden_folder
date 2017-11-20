cls
@ECHO OFF
set n1="21EC2020-3AEA-1069-A2DD-08002B30309D"
title 0.bat
if EXIST "21EC2020-3AEA-1069-A2DD-08002B30309D" goto UNLOCK
FOR /D %%a IN (*) DO (
	if EXIST %%a\n.txt (
		FOR /F "tokens=*" %%i IN (%%a\n.txt) DO set n=%%i
		set a=%%a
		goto reme
	)
)
goto nreme
:reme
ren %a% %n%
:nreme
if NOT EXIST %n% goto MDLOCKER
:CONFIRM
goto LOCK
:LOCK
ren %n% %n1%
attrib +h +s %n1%
cacls %n1% /e /c /d %username%
goto End
:UNLOCK
cacls %n1% /e /c /g %username%:f
attrib -h -s %n1%
ren %n1% _
FOR /F "tokens=*" %%i IN (_\p.txt) DO set getpass=%%i
FOR /F "tokens=*" %%i IN (_\n.txt) DO set n=%%i
ren _ %n1%
attrib +h +s %n1%
cacls %n1% /e /c /d %username%
cls
set/p "pass=>"
if NOT %pass%==%getpass% goto FAIL
cacls %n1% /e /c /g %username%:f
attrib -h -s %n1%
ren %n1% %n%
goto End
:FAIL
goto end
:MDLOCKER
md _
goto End
:End
ping localhost -n 2 >nul
exit
