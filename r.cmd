@echo off
setlocal enabledelayedexpansion
set BASE=10.6.3
set OUT=F:\ifsdev\ifsdoc\f1doc\common\stylesheets\out.txt
if not exist C:\temp mkdir C:\temp
break > "%OUT%"

for /L %%i in (1,1,254) do (
  set IP=%BASE%.%%i
  for /f "delims=" %%L in ('nslookup !IP! 2^>NUL ^| findstr /R /C:"name ="') do (
    set "LINE=%%L"
  )
  if defined LINE (
    for /f "tokens=3,* delims== " %%A in ("!LINE!") do echo !IP!   %%A>>"%OUT%"
  ) else (
    echo !IP!   ->>"%OUT%"
  )
  set "LINE="
)

type "%OUT%"
