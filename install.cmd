@echo off
REM To make a more skinny package, exclude the bin/ folder and include these lines
REM 
REM mkdir bin
REM wget\wget.exe --no-check-certificate "https://github.com/technomancy/leiningen/raw/master/bin/lein.bat"
REM move lein.bat bin\
REM wget\wget.exe --no-check-certificate "https://github.com/downloads/technomancy/leiningen/leiningen-2.0.0-SNAPSHOT-standalone.jar"
REM move leiningen-2.0.0-SNAPSHOT-standalone.jar bin\

set PATH=%PATH%;%CD%\bin
set LEIN_JAR=%CD%\bin\leiningen-2.0.0-SNAPSHOT-standalone.jar
IF NOT EXIST "%USERPROFILE%"\.lein mkdir "%USERPROFILE%"\.lein
IF EXIST "%USERPROFILE%"\.lein\profiles.clj copy "%USERPROFILE%"\.lein\profiles.clj "%USERPROFILE%"\.lein\profiles.clj.old
echo {:user {:plugins [[lein-catnip "0.1.0"]]}} > "%USERPROFILE%"\.lein\profiles.clj
