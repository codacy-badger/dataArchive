@echo off

:: Print the active branch
git branch
git add .
git commit -m %1
git push