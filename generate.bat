@echo off
setlocal enabledelayedexpansion
echo ^<html^>> index.html
echo ^<head^>>> index.html
echo ^<title^>index.html^</title^>>> index.html
echo ^</head^>>> index.html
echo ^<body^>>> index.html
echo ^<div^>>> index.html
set str=%~dp0%
:next
if not "%str%"=="" (
	set /a num+=1
	set "str=%str:~1%"
	goto next
)
(for /f "eol=.tokens=* delims=" %%i in ('dir /b/s/a-d') do (
set m=%%i
echo ^<a href=^"!m:~%num%!^"^>!m:~%num%!^</a^>^<br/^>
))>>index.html
echo ^</div^>>> index.html

echo ^</body^>>> index.html
echo ^</html^>>> index.html