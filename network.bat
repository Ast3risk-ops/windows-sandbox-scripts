@echo off
title DNS changer

SET "ADAPTER_NAME=Ethernet"

netsh interface ip set dns name="%ADAPTER_NAME%" static 76.76.2.2 primary
:: ControlD tracker-blocking DNS as Mullvad's resolver doesn't support unencrypted DNS

netsh interface ip add dns name="%ADAPTER_NAME%" 76.76.10.2 index=2

if %errorlevel% neq 0 (
    echo ERROR setting DNS! Check the adapter name and try again.
    goto :end
)

ipconfig /release
timeout /t 3 >nul
ipconfig /renew

:end
pause