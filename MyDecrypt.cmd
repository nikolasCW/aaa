@echo off
setlocal enabledelayedexpansion
set ENCRYPTED=CgQItFLEmLiSxbfO08pKOKEUoJRpniqiGW4nKdevcRZQfBc=
set CLASSPATH=.

set "IFS_HOME=f:\ifsdev"
set "JAVA_HOME=%IFS_HOME%\mw_home\java"
set "PATH=%JAVA_HOME%\bin\;%PATH%"

javac MyDecrypt.java
java MyDecrypt %ENCRYPTED%
