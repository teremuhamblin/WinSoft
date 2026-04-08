## 🟩 Version 1.1 — AO-Release
Advanced et Optimization

===========================
WinSoft 1.1 — AO-Release
===========================

.. image:: assets/banner.png
   :align: center
   :alt: WinSoft Banner

WinSoft est un framework PowerShell d’optimisation avancée pour Windows 10 et 11.
La version **1.1** introduit des optimisations réseau, CPU/RAM, un nettoyage
système approfondi et un système de logs professionnel.

-------------------------
Nouveautés de la version
-------------------------

Optimisation réseau
===================

- Optimisation TCP/IP (latence réduite)
- Amélioration DNS (cache + fallback)
- Désactivation de services réseau inutiles
- Nouveaux modules :
  - ``optimize_tcp.ps1``
  - ``optimize_dns.ps1``
  - ``disable_services.ps1``

Optimisation CPU / RAM
======================

- Optimisation du scheduler CPU
- Réduction des processus gourmands
- Ajustement du plan d’alimentation
- Nouveaux modules :
  - ``optimize_cpu.ps1``
  - ``optimize_ram.ps1``
  - ``reduce_services.ps1``

Nettoyage avancé
================

- Nettoyage WinSxS sécurisé
- Purge des logs système Windows
- Nettoyage DISM avancé
- Optimisation du dossier SoftwareDistribution
- Nouveaux modules :
  - ``clean_winsxs.ps1``
  - ``clean_logs.ps1``
  - ``clean_dism.ps1``

Système de logs amélioré
========================

- Rotation automatique (daily/weekly)
- Niveaux de logs : INFO / WARN / ERROR
- Format JSON + texte
- Nouveau module :
  - ``rotate_logs.ps1``
- Mise à jour :
  - ``write_log.ps1``

-----------------------
Structure du projet
-----------------------

Voir le fichier ``STRUCTURE.md`` pour la structure complète des versions 1.0 et 1.1.

-----------------------
Utilisation du script
-----------------------

Exécution standard
==================

.. code-block:: powershell

   .\WinSoft.ps1

Options disponibles
===================

.. code-block:: powershell

   .\WinSoft.ps1 -OptimizeNetwork
   .\WinSoft.ps1 -OptimizeCPU
   .\WinSoft.ps1 -CleanAdvanced
   .\WinSoft.ps1 -Full

---------
Licence
---------

MIT (optionnel)

-------------
Contribution
-------------

Voir ``CONTRIBUTING.md``.

---------
Sécurité
---------

Voir ``SECURITY.md``.
