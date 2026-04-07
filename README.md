📘 README.md

# WinSoft

> Framework PowerShell unifié pour alléger et optimiser Windows 10 & 11


🧭 Présentation

WinSoft est un framework PowerShell modulaire conçu pour :

- alléger Windows 10 et Windows 11  
- optimiser les performances système  
- supprimer les applications inutiles (bloatware)  
- désactiver les services non essentiels  
- appliquer des réglages propres à chaque OS  
- fournir une base propre, maintenable et extensible  

Le projet détecte automatiquement la version de Windows et applique les modules adaptés.

Version actuelle : 1.0.0 — Stable

---

🏗️ Architecture du projet

```text
WinSoft-Unified/
├── scripts/
│   ├── main.ps1
│   ├── detect.ps1
│   ├── common/
│   │   ├── debloat-common.ps1
│   │   └── optimize-common.ps1
│   ├── win10/
│   │   ├── debloat-win10.ps1
│   │   └── optimize-win10.ps1
│   └── win11/
│       ├── debloat-win11.ps1
│       └── optimize-win11.ps1
├── config/
│   ├── apps-common.txt
│   ├── apps-win10.txt
│   └── apps-win11.txt
├── logs/
│   └── (générés automatiquement)
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   ├── feature_request.md
│   │   ├── module_request.md
│   │   └── documentation.md
│   ├── pullrequesttemplate.md
│   └── FUNDING.yml
├── CHANGELOG.md
└── README.md
```

---

⚙️ Fonctionnement

🔍 Détection automatique de l’OS
Le script detect.ps1 identifie si le système est :

- Windows 10  
- Windows 11  

🧠 Script principal
main.ps1 :

- crée les logs  
- charge la détection  
- exécute les modules communs  
- exécute les modules spécifiques selon l’OS  

🧹 Modules Debloat
- Commun : suppression des apps présentes sur Win10 & Win11  
- Win10 : suppression des apps spécifiques Windows 10  
- Win11 : suppression des apps spécifiques Windows 11 (Widgets, Chat, Clipchamp…)  

⚡ Modules Optimisation
- Commun : télémétrie, services inutiles, fichiers temporaires  
- Win10 : Cortana, effets visuels  
- Win11 : Widgets, Chat, effets visuels  

---

🚀 Utilisation

Exécuter en administrateur :

`powershell
cd .\scripts\
.\main.ps1
`

Les logs seront générés automatiquement dans logs/.

---

🧩 Configuration

Les listes d’applications à supprimer sont dans :

- config/apps-common.txt  
- config/apps-win10.txt  
- config/apps-win11.txt  

Modifiables sans toucher aux scripts.

---

🧪 Qualité & Workflow GitHub

🐞 Templates d’issues
Disponibles dans .github/ISSUE_TEMPLATE/ :

- Bug Report  
- Feature Request  
- Module Request  
- Documentation  

🔀 Template de Pull Request
Disponible dans .github/pullrequesttemplate.md.

🎯 Milestone 1.0
Inclut :

- structure du projet  
- scripts principaux  
- modules debloat  
- modules optimisation  
- documentation  
- configuration  

📘 CHANGELOG
Toutes les modifications sont documentées dans CHANGELOG.md.

---

📦 Roadmap (extraits)

🔜 Version 1.1
- Optimisation réseau  
- Optimisation CPU/RAM  
- Nettoyage avancé (WinSxS, logs système)

🔮 Version 2.0
- Interface TUI PowerShell  
- Mode Ultra‑Lite (agressif, optionnel)  
- Support Windows Server  

---

🤝 Contributions

Les contributions sont les bienvenues :

1. Créer une branche  
2. Ouvrir une issue si nécessaire  
3. Soumettre une Pull Request  
4. Suivre le template fourni  

---

❤️ Support & Sponsoring

Les liens de soutien sont disponibles dans :

`
.github/FUNDING.yml
`

---

📜 Licence

Projet open‑source — licence au choix (MIT recommandé).  
Je peux te générer un fichier LICENSE si tu veux.

---

🏁 Statut actuel

WinSoft‑Unified 1.0.0 est :

- stable  
- modulaire  
- maintenable  
- compatible Windows 10 & 11  
- documenté  
- prêt pour les futures versions  

---
