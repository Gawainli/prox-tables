set WORKSPACE=..
set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=.

dotnet %LUBAN_DLL% ^
    -t all ^
    -d json ^
    -d bin ^
    -c cs-bin ^
    -c cs-simple-json^
    --conf %CONF_ROOT%\luban.conf ^
    -x bin.outputDataDir=./output/bytes ^
    -x json.outputDataDir=./output/json ^
    -x cs-bin.outputCodeDir=./output/cs ^
    -x cs-simple-json.outputCodeDir=./output/json

pause