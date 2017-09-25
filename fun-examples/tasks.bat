echo %~dp0%
@echo off
set tn="Wolfram\Vernier Barometer Experiment"
set tr="%~dp0%barometer.vbs"
schtasks /delete /tn %tn% /f
schtasks /create /tn %tn% /tr %tr% /sc minute /mo 5
schtasks /query  /tn %tn% /v /fo list
