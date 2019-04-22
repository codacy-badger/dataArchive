@echo off

:: Return the current branch
for /f %%i in ('git rev-parse --abbrev-ref HEAD') do set curr_branch=%%i

:: Check to see if the branch is on master
REM if  "%curr_branch%" == "master" (
REM    echo On master
REM ) ELSE (
REM    :again 
REM       echo Branch is not on master.
REM       set /p answer="Do you want to create it now (Y/N)?"
REM       if /i "%answer:~,1%" EQU "Y" echo ""
REM       if /i "%answer:~,1%" EQU "N" exit /b
REM       echo Please type Y for Yes or N for No
REM       goto again

REM )

:: Commit and Push
git add .
git commit -m %1
git push

:: 
for /f %%i in ('git rev-parse HEAD') do set curr_commit=%%i

echo current commit: "%curr_commit:~1,6%"
echo commit message: %1


