REM init_windows_cmd.bat

REM It is necessary to run this file once before compilation of modules with native code 
REM (e.g. before `mix deps.compile argon2_elixir`) on Windows machine

REM Open the link below for more informations with the guide for installing all requirements
@cls
@echo Initializing build tools...
@echo More info: https://github.com/elixir-lang/elixir_make/blob/master/lib/mix/tasks/compile.make.ex#L72
@cmd /K "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64