# WinSoft — Shared Scripts (v1.1 AO Release)

Ce dossier contient les modules partagés utilisés par WinSoft v1.1 AO Release.  
Ils fournissent des outils communs ainsi que trois profils de configuration applicables au système.

## Contenu

### Scripts PowerShell
- **cleanup.ps1** — Nettoyage sûr (Temp, corbeille, fichiers inutiles)
- **network.ps1** — Diagnostic réseau rapide
- **performance.ps1** — Analyse CPU / RAM / disques / processus

### Profils (.txt)
- **gaming.txt** — Optimisations légères orientées jeu
- **minimal.txt** — Profil minimaliste, silencieux, sans services inutiles
- **performance.txt** — Optimisations générales orientées performance

## Application d’un profil
Utilisez le script suivant pour appliquer un profil :

```powershell
.\apply-profile.ps1 -Profile "gaming"
