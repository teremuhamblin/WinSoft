# 📘 Changelog — WinSoft
Toutes les modifications notables du projet seront documentées dans ce fichier.

Le format est basé sur **Keep a Changelog**, et ce projet suit les principes du **Semantic Versioning**.

---

## [1.0.0] — 2026-04-07
### 🎉 Première version stable
- Création du projet **WinSoft‑Unified**
- Ajout de la détection automatique Windows 10 / Windows 11
- Mise en place de la structure modulaire :
  - `common/`
  - `win10/`
  - `win11/`
- Ajout du script principal `main.ps1`
- Ajout du module `detect.ps1`

### 🧹 Modules Debloat
- `debloat-common.ps1` : suppression des applications communes aux deux OS
- `debloat-win10.ps1` : suppression des applications spécifiques Windows 10
- `debloat-win11.ps1` : suppression des applications spécifiques Windows 11

### ⚙️ Modules Optimisation
- `optimize-common.ps1` : désactivation télémétrie, nettoyage temp, services inutiles
- `optimize-win10.ps1` : désactivation Cortana, optimisation visuelle
- `optimize-win11.ps1` : désactivation Widgets, Chat, optimisation visuelle

### 📁 Configuration
- Ajout des fichiers :
  - `apps-common.txt`
  - `apps-win10.txt`
  - `apps-win11.txt`

### 📝 Documentation
- README pour :
  - `scripts/`
  - `common/`
  - `win10/`
  - `win11/`
  - `config/`
  - `logs/`
- Ajout du fichier `FUNDING.yml`

---

## [Unreleased]
### 🚧 À venir
- Module d’optimisation réseau
- Module d’optimisation CPU/RAM
- Module de nettoyage avancé (WinSxS, logs système)
- Interface TUI PowerShell
- Support Windows Server 2019/2022
- Mode “Ultra‑Lite” agressif (optionnel)
