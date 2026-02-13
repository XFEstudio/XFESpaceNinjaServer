@echo off

echo Updating dependencies...
node scripts/raw-precheck.js > NUL
call npm i --omit=dev --omit=optional
call npm run raw

echo Server seems crashed.

:a
pause > nul
goto a