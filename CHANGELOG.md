##### 📘 CHANGELOG.md >> markdown

# 📜 WinSoft

Toutes les modifications notables de ce projet sont documentées dans ce fichier.

---

# 🟩 [1.1] — Optimisation Avancée (2026-04)
### 🔧 Optimisation réseau
- Ajout du module `network/optimize_tcp.ps1`
- Ajout du module `network/optimize_dns.ps1`
- Ajout du module `network/disable_services.ps1`
- Optimisation de la stack TCP/IP (latence réduite)
- Amélioration de la résolution DNS (cache + fallback)
- Désactivation de services réseau non essentiels

### ⚙️ Optimisation CPU / RAM
- Ajout du module `performance/optimize_cpu.ps1`
- Ajout du module `performance/optimize_ram.ps1`
- Ajout du module `performance/reduce_services.ps1`
- Optimisation du scheduler CPU
- Réduction des processus gourmands
- Ajustement du plan d’alimentation pour les performances

### 🧹 Nettoyage avancé
- Ajout du module `cleanup/clean_winsxs.ps1`
- Ajout du module `cleanup/clean_logs.ps1`
- Ajout du module `cleanup/clean_dism.ps1`
- Nettoyage WinSxS sécurisé (analyse + purge contrôlée)
- Purge des logs système Windows
- Nettoyage avancé DISM (composants obsolètes)
- Optimisation du dossier SoftwareDistribution

### 📁 Amélioration du système de logs
- Ajout du module `utils/rotate_logs.ps1`
- Amélioration du module `utils/write_log.ps1`
- Ajout de la rotation automatique (daily/weekly)
- Ajout des niveaux de logs : INFO / WARN / ERROR
- Support du format JSON + texte
- Ajout des dossiers `logs/rotation/` et `logs/archive/`

### 📦 Structure mise à jour
- Ajout des dossiers `modules/network`, `modules/performance`, `modules/cleanup`
- Ajout des fichiers de configuration :  
  `network.conf`, `performance.conf`, `cleanup.conf`
- Mise à jour de `STRUCTURE.md` pour inclure la version 1.1

---

# 🟩 [1.0] — Version initiale (2026-03)
- Structure de base du framework
- Modules Windows 10 / Windows 11
- Optimisations système standard
- Nettoyage classique (temp, cache, prefetch)
- Gestion simple des logs
- Configuration modulaire (apps-common, apps-win10, apps-win11)
- Documentation initiale (README, ROADMAP, SECURITY, CONTRIBUTING)

Toutes les modifications notables du projet seront documentées dans ce fichier.

Le format est basé sur **Keep a Changelog**, et ce projet suit les principes du **Semantic Versioning**.

---

## [1.0] — 2026-04
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
### À venir Version 1.1
- Module d’optimisation réseau
- Module d’optimisation CPU/RAM
- Module de nettoyage avancé (WinSxS, logs système)

### À venir Version 1.2
- Interface TUI PowerShell
- Support Windows Server 2019/2022
- Mode “Ultra‑Lite” agressif (optionnel)
