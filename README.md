# MinecraftMMO

Konfigurationen von all meinen MMO Plugins auf meinem RPG Minecraft Server

> **⚠️ Projekt-Status:** In Entwicklung - Das Grundgerüst steht, aber vieles ist noch Work in Progress!

## Über das Projekt

Dieses Repository enthält alle Konfigurationen für ein Minecraft Paper Server Netzwerk (Version 1.21.10) mit Velocity Proxy.

**Server-IP:** `mc.festas-builds.com`

Das Netzwerk besteht aus 4 Servern:
- **Lobby**: Haupt-Lobby für Spieler-Routing
- **Survival**: Standard Survival Server (getrennt von MMO-Servern)
- **Skyblock**: MMO Skyblock mit RPG-Elementen
- **RPG**: Vollständiger MMO-RPG Server

Die **Skyblock** und **RPG** Server kombinieren die besten Elemente von:
- **Hypixel Skyblock**: Progression-System, Custom Items, Stats und Skills
- **Wynncraft RPG**: Quests, Klassen-System (6 Klassen), Story-Elemente

Mit vielen eigenen Verbesserungen und zusätzlichen Features!

## Repository-Struktur

```
MinecraftMMO/
├── Skyblock/           # Skyblock Server Konfigurationen
│   ├── MythicMobs/    # Items, Mobs, Skills
│   ├── Quests/        # Quest-Definitionen
│   ├── Classes/       # Klassen-System
│   ├── Dungeons/      # Dungeon-Konfigurationen
│   └── NPCs/          # NPC-Definitionen
├── RPG/               # RPG Server Konfigurationen
│   ├── MythicMobs/    # Items, Mobs, Skills
│   ├── Quests/        # Quest-Definitionen
│   ├── Classes/       # Klassen-System
│   ├── Dungeons/      # Dungeon-Konfigurationen
│   └── NPCs/          # NPC-Definitionen
├── Shared/            # Gemeinsame Ressourcen
├── Lobby/             # Lobby-Konfigurationen
└── Survival/          # Survival-Konfigurationen
```

## Klassen-System

Das Netzwerk bietet ein umfassendes Klassen-System mit **6 Klassen** (MMOCore):

1. **Krieger** - Tank/Melee DPS
2. **Magier** - Ranged Magic DPS
3. **Assassine** - Schneller Melee DPS
4. **Bogenschütze** - Ranged Physical DPS
5. **Schamane** - Support/Healer
6. **Beschwörer** - Summoner/Pet-Class

## Verwendete Plugins

Die wichtigsten MMO-Plugins, die in diesem Projekt konfiguriert werden:

- **MythicMobs** (Premium auf RPG): Custom Mobs, Items und Skills
- **MMOCore & MMOItems**: Klassen- und Custom-Item-System
- **BetonQuest**: Advanced Quest-System
- **MythicDungeons**: Instanzierte Dungeons
- **Citizens**: NPC-System
- **HuskSync**: Daten-Synchronisation zwischen RPG & Skyblock
- **CoinsEngine**: Multi-Währungs-System

Vollständige Plugin-Liste siehe [docs/PLUGINS.md](docs/PLUGINS.md)

## Dokumentation

Umfassende Dokumentation findest du im [`/docs`](docs/) Verzeichnis:

- **[PLANNING.md](docs/PLANNING.md)** - Fragenkatalog für Planung und Entwicklung
- **[ARCHITECTURE.md](docs/ARCHITECTURE.md)** - Netzwerk-Architektur und technische Details
- **[PLUGINS.md](docs/PLUGINS.md)** - Vollständige Plugin-Referenz pro Server
- **[WORKFLOWS.md](docs/WORKFLOWS.md)** - Workflow-Templates für häufige Aufgaben
- **[CHECKLISTS.md](docs/CHECKLISTS.md)** - Checklisten für Content-Erstellung und Testing

Zusätzliche Referenzen:
- **[QUICKREF.md](QUICKREF.md)** - Schnellreferenz für häufige Befehle und Konzepte
- **[USAGE.md](USAGE.md)** - Ausführliche Nutzungsanleitung

## Verwendung

Jeder Server-Ordner (Skyblock, RPG) enthält seine eigenen Plugin-Konfigurationen.

Die Konfigurationsdateien können direkt in die entsprechenden Plugin-Ordner auf dem Server kopiert werden:
```bash
# Beispiel für MythicMobs Items
plugins/MythicMobs/Items/ <- Skyblock/MythicMobs/Items/
```

## Beitragen

Dies ist ein persönliches Projekt für meinen Minecraft Server.

## Technische Details

- **Minecraft Version:** 1.21.10
- **Server Software:** Paper
- **Proxy:** Velocity
- **Datenbanken:** MySQL/MariaDB, Redis
- **Server-IP:** mc.festas-builds.com
