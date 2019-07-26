@echo off
IF "%1" == "-h" (GOTO print_help);

jmeter -n -t TestRail2Feature.jmx -Jproject_id=%1 -Jtestsuite_id=%2 -Jis_testrail_to_feature=true

:print_help
cls
echo ==========================================
echo.
echo Uputstva za konfiguriranje radne okoline
echo ==========================================
echo.
type README.txt
exit /B 0
