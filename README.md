📘 `README.md` >> 🪟 Win10‑Soft
- Optimisation, nettoyage et automatisation pour Windows 10 / 11

> Win10‑Soft est un projet conçu pour alléger Windows 10, améliorer sa réactivité, supprimer les applications inutiles, désactiver les services lourds, et automatiser certaines tâches de maintenance.  
L’objectif : obtenir un système plus rapide, plus propre, et plus stable, sans casser les composants essentiels.

---

🚀 Fonctionnalités principales

- 🧹 Debloat Windows 10 / 11
  Suppression des applications préinstallées inutiles (bloatware).

- 📦 Désinstallation OneDrive  
  Retrait complet et propre du client OneDrive.

- ⚙️ Désactivation de services lourds  
  Réduction de la télémétrie et des services non essentiels.

- 🧩 Structure modulaire  
  Chaque action est séparée dans un script dédié pour une meilleure maintenance.

- 📝 Logs automatiques  
  Toutes les actions sont enregistrées dans le dossier logs/.

- 🔧 Configuration simple  
  Les applications à supprimer sont listées dans config/apps-to-remove.txt.

---

📁 Structure du projet


```text
Win10-Soft/
├── README.md
├── scripts/
│   ├── main.ps1
│   └── debloat.ps1
├── logs/
│   └── .gitkeep
└── config/
    └── apps-to-remove.txt
```

---

🛠️ Installation & utilisation

1. Télécharger le projet
Clone ou télécharge le dossier :

`powershell
git clone https://github.com/username/Win10-Soft
cd Win10-Soft
`

2. Exécuter le script principal

Ouvre PowerShell en administrateur, puis lance :

`powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
.\scripts\main.ps1
`

---

🧩 Modules inclus

main.ps1
- Point d’entrée du projet  
- Gère les logs  
- Exécute les modules dans l’ordre

debloat.ps1
- Supprime les applications inutiles  
- Désinstalle OneDrive  
- Désactive certains services lourds  
- Nettoie le système

---

🧹 Personnalisation

Modifier la liste des applications à supprimer
Édite le fichier :

`
config/apps-to-remove.txt
`

Ajoute ou supprime des lignes selon tes besoins.

---

⚠️ Avertissements

- Ce projet supprime certaines applications Microsoft préinstallées.  
- Aucune suppression critique du système n’est effectuée, mais il est recommandé de créer un point de restauration avant utilisation.  
- Utilisation à vos risques et responsabilités.

---

📜 Licence

Ce projet est distribué sous licence MIT.  
Vous êtes libre de l’utiliser, le modifier et le redistribuer.

---

🤝 Contributions

Les contributions sont les bienvenues :  
- nouvelles optimisations  
- modules supplémentaires  
- améliorations du debloat  
- documentation

---

🧠 Auteur

Projet créé par The MadDoG.tmdg, optimisé pour un usage personnel ou professionnel sur Windows 10 et 11

`

---
