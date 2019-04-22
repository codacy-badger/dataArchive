@echo off

:: Print the active branch

b=git branch
if not $b == "* master" (
    echo Not on master
) ELSE (
    echo On Master
)
git add .
git commit -m %1
git push