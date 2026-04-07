🗺️ Roadmap — WinSoft v1.0

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
