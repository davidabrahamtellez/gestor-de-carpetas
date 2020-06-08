@echo off
title gestor de carpetas
color b
:cero
echo 1. crear carpetas
echo 2. esconder carpetas
echo 3. revelar carpetas
echo 4. salir
set/p a=¿Que deseas hacer?=
if %a%==1 (goto :1)
if %a%==2 (goto :2)
if %a%==3 (goto :3)
if %a%==4 (exit)

:1
set/p carpeta=¿Que nombre quieres para tu carpeta?=
md %carpeta%
set/p esconder=¿Deseas esconder tu carpeta ahora?=
if %esconder%==si (attrib +h %carpeta% & msg * Carpeta oculta correctamente) else msg * La carpeta no pudo ocultarse
cls
goto cero
:2
set/p nombre=Nombre de la carpeta que deseas ocultar=
attrib +h %nombre%
msg * Carpeta oculta
3:
set/p Recuperar=Nombre de la carpeta que deseas Recuperar?=
if exist %Recuperar% (set/p pass=introduce la contraseña) else msg * la carpeta no existe & goto cero
if %pass%==123456789 (attrib -h %Recuperar% & msg * carpeta recuperada correctamente) else msg * carpeta no recuperada
clsgoto cero