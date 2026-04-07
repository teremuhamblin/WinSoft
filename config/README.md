e README.md complet aligné avec l'architecture 1.0, dédié au dossier config/.  
Il explique clairement le rôle du dossier, les fichiers .txt, les scripts .ps1, et comment ils s’intègrent dans WinSoft.

Tu peux le coller directement dans :

`
WinSoft-Unified/config/README.md
`

---

📘 README — Dossier config/

Fichiers de configuration et scripts utilitaires de WinSoft‑Unified

---

🧭 Présentation

Le dossier config/ contient toutes les données de configuration utilisées par WinSoft‑Unified.  
Il regroupe :

- les listes d’applications à supprimer (debloat)  
- les scripts de gestion, validation et mise à jour de ces listes  

Ce dossier permet de modifier le comportement du framework sans toucher aux scripts principaux.

---

📁 Contenu du dossier

`
config/
├── apps-common.txt
├── apps-win10.txt
├── apps-win11.txt
├── load_config.ps1
├── validate_config.ps1
└── update_config.ps1
`

---

📄 Fichiers de configuration (.txt)

1. apps-common.txt
Liste des applications présentes à la fois sur Windows 10 et Windows 11, supprimées par debloat-common.ps1.

2. apps-win10.txt
Liste des applications spécifiques à Windows 10, supprimées par debloat-win10.ps1.

3. apps-win11.txt
Liste des applications spécifiques à Windows 11, supprimées par debloat-win11.ps1.

✔ Avantages
- Modifiables facilement  
- Aucun impact sur les scripts  
- Format simple : une application par ligne  
- Ignorent automatiquement les lignes vides  

---

🛠️ Scripts utilitaires (.ps1)

1. load_config.ps1
Charge proprement les trois fichiers .txt et renvoie un objet PowerShell contenant :

- .Common  
- .Win10  
- .Win11

Utilisé pour centraliser la lecture des listes.

---

2. validate_config.ps1
Vérifie la qualité des fichiers :

- existence  
- non‑vide  
- absence de doublons  
- format propre  

Idéal avant une release ou une mise à jour.

---

3. update_config.ps1
Permet d’ajouter ou de supprimer une application dans un fichier .txt :

Exemples :

`powershell

Ajouter une app dans la liste commune
.\update_config.ps1 -Target common -Action add -AppName Microsoft.XboxApp

Supprimer une app de la liste Win11
.\update_config.ps1 -Target win11 -Action remove -AppName Clipchamp.Clipchamp
`

Ce script garantit :

- pas de doublons  
- suppression propre  
- mise à jour automatique  

---

🔗 Intégration avec WinSoft‑Unified

Les fichiers .txt sont utilisés par :

- debloat-common.ps1  
- debloat-win10.ps1  
- debloat-win11.ps1  

Les scripts .ps1 du dossier config/ sont optionnels, mais fortement recommandés pour :

- maintenir les listes  
- automatiser les mises à jour  
- vérifier la cohérence  

---

🧪 Bonnes pratiques

- Toujours valider les fichiers après modification :  
  `powershell
  .\validate_config.ps1
  `
- Utiliser update_config.ps1 plutôt que modifier les fichiers à la main  
- Garder les noms d’applications exactement comme dans Get-AppxPackage  
- Ne jamais ajouter d’espaces ou de commentaires dans les .txt  

---

🏁 Statut

Le dossier config/ est complet et stable pour la version WinSoft‑Unified 1.0.0.

Il constitue la base de configuration du framework et garantit une maintenance simple et propre.

---
