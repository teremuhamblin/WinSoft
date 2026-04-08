🟦 STRUCTURE.md >> markdown

# 🏗️ Structure du projet — WinSoft
# 📌 Version 1.0 (structure initiale)

```text
WinSoft/
├── WinSoft.ps1
├── README.md
├── ROADMAP.md
├── STRUCTURE.md
├── CHANGELOG.md
│
├── assets/
│   ├── banner.png
│   └── logo.svg
│
├── config/
│   ├── apps-common.txt
│   ├── apps-win10.txt
│   ├── apps-win11.txt
│   ├── load_config.ps1
│   └── validate_config.ps1
│
├── logs/
│   └── .gitkeep
│
├── modules/
│   ├── win10/
│   └── win11/
│
└── utils/
    ├── write_log.ps1
    └── system_info.ps1
```

---

🚀 Version 1.1 (structure mise à jour)

```text
WinSoft/
├── WinSoft.ps1
├── README.md
├── ROADMAP.md
├── STRUCTURE.md
├── CHANGELOG.md
│
├── assets/
│   ├── banner.png
│   ├── logo.svg
│   └── screenshots/
│
├── config/
│   ├── apps-common.txt
│   ├── apps-win10.txt
│   ├── apps-win11.txt
│   ├── network.conf
│   ├── performance.conf
│   └── cleanup.conf
│
├── logs/
│   ├── .gitkeep
│   ├── rotation/
│   └── archive/
│
├── modules/
│   ├── network/
│   │   ├── optimize_tcp.ps1
│   │   ├── optimize_dns.ps1
│   │   └── disable_services.ps1
│   │
│   ├── performance/
│   │   ├── optimize_cpu.ps1
│   │   ├── optimize_ram.ps1
│   │   └── reduce_services.ps1
│   │
│   ├── cleanup/
│   │   ├── clean_winsxs.ps1
│   │   ├── clean_logs.ps1
│   │   └── clean_dism.ps1
│
└── utils/
    ├── write_log.ps1
    ├── rotate_logs.ps1
    └── system_info.ps1
```

---

🏁 Statut
- 1.0 : terminé
- 1.1 : en cours de développement
- 2.0 : planifié

`

---
