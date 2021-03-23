@echo off
title >nul
mode 80,20

:: HASH EXAMPLE
:: certutil -hashfile C:\Users\%username%\desktop\Example.txt MD5

:: command: certutil -hashfile <path> <hash>

:: Some types of hash: MD4, MD5, SHA256 and SHA512

:menu
cls
echo [1] Hash MD4
echo [2] Hash MD5
echo [3] Hash SHA256
echo [4] Hash SHA512
echo [5] How to use
echo [6] Exit
echo.
set /p menu="Choose an option:  "
if %menu%==1 goto MD4
if %menu%==2 goto MD5
if %menu%==3 goto SHA256
if %menu%==4 goto SHA512
if %menu%==5 goto HowToUse
if %menu%==6 exit

:MD4
cls
echo Example of file path:  C:\Users\%username%\desktop\Example.txt
echo.
set /p md4="Paste the file path:  "
echo.
certutil -hashfile %md4% MD4
echo.
pause
goto menu

:MD5
cls
echo Example of file path:  C:\Users\%username%\desktop\Example.txt
echo.
set /p md5="Paste the file path:  "
echo.
certutil -hashfile %md5% MD5
echo.
pause
goto menu

:SHA256
cls
echo Example of file path:  C:\Users\%username%\desktop\Example.txt
echo.
set /p sha256="Paste the file path:  "
echo.
certutil -hashfile %sha256% SHA256
echo.
pause
goto menu

:SHA512
cls
echo Example of file path:  C:\Users\%username%\desktop\Example.txt
echo.
set /p sha512="Paste the file path:  "
echo.
certutil -hashfile %sha512% SHA512
echo.
pause
goto menu

:HowToUse
cls
echo You must create a .txt and inside write the word you want to hash, then copy the path of that file and paste it where the program asks you to.
echo.
echo Or you can also copy the command and put it on your own in the cmd.
echo.
pause
goto menu