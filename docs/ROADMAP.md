###### ROADMAP.md >> markdown
# 🗺️ Roadmap — WinSoft
>Évolution du projet WinSoft, de la version 1.0 à 1.3.  
- Objectif : créer un outil PowerShell modulaire, stable, maintenable et documenté.

---

## ✅ v1.0 — Initialisation du projet
- Création du script principal `WinSoft.ps1`
- Ajout des premiers modules : network, performance, cleanup
- Mise en place des dossiers : config/, logs/, modules/, utils/
- Ajout des fichiers de documentation de base (README, STRUCTURE)

---

## ✅ v1.1 — Stabilisation & Modularisation
- Séparation des modules par catégories (network, performance, cleanup)
- Ajout des fichiers de configuration dédiés
- Mise en place du système de logs + rotation
- Amélioration de la structure générale du projet
- Ajout des assets (logo, banner, screenshots)

---

## 🚀 v1.2 — Architecture Avancée & Préparation Documentation (EN COURS)
### Nouveautés principales
- Ajout du module central `WinSoft.Core.psm1`
- Ajout du manifest PowerShell `WinSoft.Manifest.psd1`
- Ajout d’un système de documentation dans `docs/` (préparation GitHub Pages)
- Ajout d’un loader de modules (`utils/module_loader.ps1`)
- Ajout d’un loader de configuration (`config/config-loader.ps1`)
- Ajout d’un gestionnaire d’erreurs centralisé (`utils/error_handler.ps1`)
- Ajout de fichiers `module.json` pour chaque module
- Mise à jour de la structure du projet (v1.2)

### Objectifs
- Standardiser l’architecture PowerShell
- Préparer la documentation pour GitHub Pages (sans l’activer)
- Améliorer la maintenabilité et la scalabilité
- Centraliser les fonctions critiques (logs, erreurs, chargement)

---

## 🔭 v1.3 — Automatisation & Intelligence (À VENIR)
### Prévisions
- Ajout d’un système d’auto-détection Windows (10/11/Server)
- Ajout d’un module d’analyse système avancé
- Ajout d’un mode “Auto-Optimize”
- Ajout d’un système de profils (Gaming / Work / Minimal / Full)
- Génération automatique de rapports (HTML / Markdown)
- Intégration d’un mode “Dry Run” pour tester sans appliquer

---

## 🧠 Vision Long Terme (v2.x → v3.x)
- Interface graphique (WinUI / WPF)
- API interne pour modules externes
- Système de plugins
- Mode entreprise (audit + conformité)
- Intégration cloud (sauvegarde configs + logs)
- Dashboard interactif (web ou local)

---

## 📌 Notes
- GitHub Pages n’est pas encore activé, mais la documentation est prête.
- La structure v1.2 est conçue pour supporter les futures versions sans refonte majeure.

## 📌 RAPPEL : Version 1.0 (stable)
- Structure du framework PowerShell
- Modules Windows 10 / Windows 11
- Optimisations système de base
- Nettoyage standard (temp, cache, prefetch)
- Gestion simple des logs
- Configuration modulaire (config/apps-*.txt)
- Documentation initiale (README, CONTRIBUTING, SECURITY)

---
---

# 🚀 Version 1.1 — Optimisation Avancée (en cours)
### 🔧 Optimisation réseau
- Amélioration de la stack TCP/IP
- Optimisation DNS (cache, résolution, fallback)
- Désactivation des services réseau inutiles
- Optimisation QoS / latence

### ⚙️ Optimisation CPU / RAM
- Réduction des services gourmands
- Ajustement du plan d’alimentation
- Optimisation du scheduler CPU
- Nettoyage RAM intelligent (sans outils externes)

### 🧹 Nettoyage avancé
- Nettoyage WinSxS (safe mode)
- Purge des logs système Windows
- Nettoyage des composants obsolètes DISM
- Optimisation du dossier SoftwareDistribution

### 📁 Amélioration du système de logs
- Rotation automatique (daily/weekly)
- Niveaux de logs (INFO / WARN / ERROR)
- Formatage propre JSON + texte
- Ajout d’un module `Write-Log` centralisé

---

# 🧭 Version 2.0 — WinSoft Pro (prévisionnel)
dashboard TUI PowerShell
- Installateur setup.ps1
- Mode “Auto-Optimize”
- Mode “Audit système”
- Support multi‑profil (Gaming / Work / Minimal)
- Export complet des rapports (HTML / JSON)
- Intégration GitHub Actions (tests + lint)

# 🗺️ Roadmap — WinSoft v1.0

🎯 Objectif de la version 1.0
Créer une base solide, modulaire et maintenable pour un framework PowerShell capable d’alléger et d’optimiser Windows 10 et Windows 11, avec détection automatique de l’OS et architecture extensible.

---

🧱 1. Architecture du projet (terminé)

Objectif
Mettre en place une structure claire, évolutive et professionnelle.

Réalisations
- Dossier scripts/ avec :
  - main.ps1
  - detect.ps1
  - modules common/, win10/, win11/
- Dossier config/ avec :
  - apps-common.txt
  - apps-win10.txt
  - apps-win11.txt
- Dossier logs/ (génération automatique)
- Dossier .github/ avec templates d’issues et PR
- Documentation complète pour chaque dossier

---

🧠 2. Détection automatique de l’OS (terminé)

Objectif
Identifier Windows 10 ou Windows 11 pour exécuter les modules adaptés.

Réalisations
- Script detect.ps1 basé sur ProductName
- Retour propre : Win10, Win11, Unknown
- Intégration dans main.ps1

---

🧹 3. Modules Debloat (terminé)

Objectif
Supprimer les applications inutiles selon l’OS.

Réalisations
- debloat-common.ps1  
- debloat-win10.ps1  
- debloat-win11.ps1  
- Fichiers de configuration dédiés  
- Logs individuels par module  

---

⚡ 4. Modules Optimisation (terminé)

Objectif
Appliquer des optimisations sûres et non destructives.

Réalisations
- optimize-common.ps1  
- optimize-win10.ps1  
- optimize-win11.ps1  
- Désactivation télémétrie, services inutiles  
- Optimisations visuelles  
- Désactivation Widgets / Chat (Win11)

---

🧩 5. Configuration externe (terminé)

Objectif
Permettre la modification des listes d’applications sans toucher aux scripts.

Réalisations
- apps-common.txt  
- apps-win10.txt  
- apps-win11.txt  
- Scripts utilitaires :
  - load-config.ps1
  - validate-config.ps1
  - update-config.ps1

---

📝 6. Documentation (terminé)

Objectif
Rendre le projet compréhensible, maintenable et ouvert aux contributions.

Réalisations
- README global ultra‑pro  
- README pour :
  - scripts/
  - common/
  - win10/
  - win11/
  - config/
  - logs/
- CHANGELOG.md  
- Templates GitHub :
  - Bug report
  - Feature request
  - Module request
  - Documentation
  - Pull request template

---

🧪 7. Qualité & Workflow GitHub (terminé)

Objectif
Structurer le développement et les contributions.

Réalisations
- Milestone 1.0  
- Issues 1.0  
- PR template  
- Structure de branches recommandée :
  - main
  - dev
  - feature/*

---

🏁 Statut de la version 1.0
100% terminé  
La version 1.0 constitue une base stable, propre, modulaire et prête pour les futures évolutions.

---

🚀 Prochaines étapes (post‑1.0)

Même si la roadmap 1.0 est terminée, voici les suites logiques :

🔜 Version 1.1 — Optimisations avancées
- Optimisation réseau  
- Optimisation CPU/RAM  
- Nettoyage avancé (WinSxS, logs système)  
- Amélioration du système de logs  

🔮 Version 2.0 — Interface & automatisation
- Interface TUI PowerShell  
- Mode automatique / silencieux  
- Mode Ultra‑Lite (agressif)  
- Support Windows Server  
- Dashboard interactif  

---
