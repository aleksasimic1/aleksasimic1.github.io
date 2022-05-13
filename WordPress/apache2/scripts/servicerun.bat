@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start wordpressApache
goto end

:stop

"C:/Users/IFT/Desktop/WordPress/apache2\bin\httpd.exe" -n "wordpressApache" -k stop

:end
exit
