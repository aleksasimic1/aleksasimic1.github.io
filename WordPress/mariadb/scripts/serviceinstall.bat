@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Users\IFT\Desktop\WordPress/mariadb\bin\mysqld.exe" --install "wordpressMariaDB" --defaults-file="C:\Users\IFT\Desktop\WordPress/mariadb\my.ini"

net start "wordpressMariaDB" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMariaDB" >NUL
"C:\Users\IFT\Desktop\WordPress/mariadb\bin\mysqld.exe" --remove "wordpressMariaDB"

:end
exit
