@echo off
cls
color 4

ECHO ##::::'##::'#######::'########::'##::::'##:'########::'####:'##::: ##::'######:::'########:'########::
ECHO ##:::: ##:'##.... ##: ##.... ##: ###::'###: ##.... ##:. ##:: ###:: ##:'##... ##:: ##.....:: ##.... ##:
ECHO ##:::: ##: ##:::: ##: ##:::: ##: ####'####: ##:::: ##:: ##:: ####: ##: ##:::..::: ##::::::: ##:::: ##:
ECHO ##:::: ##: ##:::: ##: ########:: ## ### ##: ########::: ##:: ## ## ##: ##::'####: ######::: ########::
ECHO. ##:: ##:: ##:::: ##: ##.. ##::: ##. #: ##: ##.....:::: ##:: ##. ####: ##::: ##:: ##...:::: ##.. ##:::
ECHO:. ## ##::: ##:::: ##: ##::. ##:: ##:.:: ##: ##::::::::: ##:: ##:. ###: ##::: ##:: ##::::::: ##::. ##::
ECHO::. ###::::. #######:: ##:::. ##: ##:::: ##: ##::::::::'####: ##::. ##:. ######::: ########: ##:::. ##:
ECHO:::...::::::.......:::..:::::..::..:::::..::..:::::::::....::..::::..:::......::::........::..:::::..::

title VormPinger
set /p IP=IP Eingeben:
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=4 & echo Die IP %IP% ist OFFLINE)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top