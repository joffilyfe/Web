@echo off
rem Este arquivo � uma chamada para o 
rem GeraScielo.bat com par�metros STANDARD

cls

echo === ATENCAO ===
echo Este arquivo executara o processamento das seguintes revistas
echo.
echo Tecle CONTROL-C para sair ou ENTER para verificar as revistas...

pause > nul

call notepad \scielo\serial\scilista.lst

cls
echo === ATENCAO ===
echo.
echo Sera executado o seguinte comando:
echo GeraScielo.bat \scielo \scielo\web log\GeraPadrao.log adiciona
echo.
echo Tecle CONTROL-C para sair ou ENTER para continuar...

pause > nul


if "%1"=="novo" goto NOVO
if not "%1"=="novo" goto NORMAL


:NOVO
cls
echo === ATENCAO ===
echo.
echo Voce escolheu a opcao "novo" e a sua base sera reinicializada!
echo.
echo Tecle CONTROL-C para sair ou ENTER para continuar...

pause > nul

deltree /Y \scielo\web\bases-work\*.*
call ExtraiRevistasArtigo.bat \scielo \scielo\web log\ExtraiRevistasArtigo.bat adiciona

:NORMAL
call GeraScielo.bat \scielo \scielo\web log\GeraPadrao.log adiciona