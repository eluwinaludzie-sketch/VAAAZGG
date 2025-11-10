@echo off
for /f "delims=" %%a in ('echo prompt $E^| cmd') do set "ESC=%%a"
echo             #$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
echo             #                                                       #
echo             #       Welcome to the New Test Batch Script!           #
echo             #                                                       #
echo             #$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
echo(       
echo  %ESC%[31mThis script is made by %ESC%[92mhttps://vaaazgg.ddns.net/%ESC%[31m and shall not be distributed under
echo  any circumstances without consent from the author. Distribution of the
echo  script may lead to legal actions.]%ESC%[0m
echo(
echo(
echo(
echo(
echo   What would you like to do? 
echo   #--------------------------------------------------#
echo   #1. %ESC%[32mWrite a new txt file.%ESC%[0m                          #
echo   #2. %ESC%[31mformat disk. - DANGEROUS IF USED INCORRENCTLY!%ESC%[0m #
echo   #3. %ESC%[32mExit%ESC%[0m                                           #
echo   #--------------------------------------------------#
echo(
set /p choice= Please enter your choice (1-3):

if "%choice%"=="1" goto writefile
if "%choice%"=="2" goto formatdisk
if "%choice%"=="3" goto exit

:writefile
echo Writing to file...
echo This is a test file created by NewTest.bat > testfile.txt
echo File written successfully!
pause


:formatdisk
echo WARNING: Formatting a disk can lead to data loss!
echo Please ensure you have selected the correct drive.
set /p drive= Enter the drive letter to format (e.g., D:):
format %drive% /FS:NTFS /Q /Y
echo Disk formatted successfully!
pause




