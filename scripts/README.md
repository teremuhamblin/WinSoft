# 📁 Dossier : scripts/

Ce dossier contient l’ensemble des scripts PowerShell utilisés par le projet **WinSoft**.  
Ils assurent la détection du système, l’exécution des modules communs et l’application des optimisations spécifiques à Windows 10 ou Windows 11.

## Structure

- **main.ps1**  
  Point d’entrée du projet. Gère les logs, détecte la version de Windows et lance les modules adaptés.

- **detect.ps1**  
  Détection automatique du système (Windows 10 ou Windows 11).

- **common/**  
  Scripts communs aux deux systèmes (debloat, optimisation générale).

- **win10/**  
  Modules spécifiques à Windows 10.

- **win11/**  
  Modules spécifiques à Windows 11.

## Utilisation

Exécuter depuis PowerShell (en administrateur) :

```powershell
.\main.ps1
