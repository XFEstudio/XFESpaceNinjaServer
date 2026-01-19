@echo off

echo 更新依赖中...
	node scripts/raw-precheck.js > NUL
	if %errorlevel% == 0 (
		call npm i --omit=dev --omit=optional
		call npm run raw
	) else (
		call npm i --omit=dev
		call npm run build
		if %errorlevel% == 0 (
			call npm run start
		)
	)
	echo XFE服务器似乎崩溃了.
)

:a
pause > nul
goto a