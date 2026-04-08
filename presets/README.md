WinSoft — Presets (v1.1 AO Release)

Ce dossier contient les profils prédéfinis utilisés par WinSoft pour appliquer rapidement
des configurations système adaptées à différents usages.  
Chaque preset est un simple fichier .txt contenant des paramètres clés-valeurs interprétés
par le script apply-profile.ps1.

Contenu des presets

🎮 gaming.txt
Optimisations légères orientées jeu :
- réduction des services inutiles
- amélioration réseau
- activation des options de performance GPU
- mode d’alimentation haute performance

🧘 minimal.txt
Profil minimaliste :
- désactivation des animations
- réduction des services en arrière-plan
- télémétrie limitée
- système plus silencieux et épuré

⚡ performance.txt
Optimisations générales :
- désactivation de l’indexation
- mode d’alimentation performance/ultimate
- boost réseau
- nettoyage automatique

Utilisation

Les presets sont appliqués via le script :

`
scripts/shared/apply-profile.ps1
`

Exemple :

`powershell
.\apply-profile.ps1 -Profile "gaming"
`

Profils disponibles :
- gaming
- minimal
- performance

Structure recommandée

`
presets/
│── gaming.txt
│── minimal.txt
└── performance.txt
`

Version
WinSoft v1.1 — AO Release
`

---
