@echo off
"C:\Users\IFT\Desktop\WordPress/mariadb\bin\mysql.exe" --defaults-file="C:\Users\IFT\Desktop\WordPress/mariadb\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Users\IFT\Desktop\WordPress/mariadb\bin\mysql.exe" --defaults-file="C:\Users\IFT\Desktop\WordPress/mariadb\my.ini" -u root -e "SET Password=password('%1');"

