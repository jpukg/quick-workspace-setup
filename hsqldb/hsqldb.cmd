@echo off
REM set these variables 
SET HSQLDB_HOME=D:\localapp\hsqldb
SET DB_NAME=mydb

REM start the server in new window ( prompt visible, so that you can CTRL+C )
REM database files are created in current directory/data
start java -cp %HSQLDB_HOME%\lib\hsqldb-2.3.4.jar org.hsqldb.server.Server --database.0 file:data/%DB_NAME% --dbname.0 %DB_NAME%

REM start the client GUI and connect to server ( no new cmd window opens because of javaw )
REM start javaw -cp %HSQLDB_HOME%\lib\hsqldb-2.3.4.jar org.hsqldb.util.DatabaseManagerSwing --url jdbc:hsqldb:hsql://localhost/%DB_NAME%