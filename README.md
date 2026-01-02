# MinecraftMMO

Konfigurationen von all meinen MMO Plugins auf meinem RPG Minecraft Server

## Über das Projekt

Dieses Repository enthält alle Konfigurationen für ein Minecraft Paper Server Netzwerk (Version 1.21.10) mit Velocity Proxy.

Das Netzwerk besteht aus 4 Servern:
- **Lobby**: Haupt-Lobby für Spieler-Routing
- **Survival**: Standard Survival Server
- **Skyblock**: MMO Skyblock mit RPG-Elementen
- **RPG**: Vollständiger MMO-RPG Server

Die **Skyblock** und **RPG** Server kombinieren die besten Elemente von:
- **Hypixel Skyblock**: Progression-System, Custom Items, Stats und Skills
- **Wynncraft RPG**: Quests, Klassen-System, Story-Elemente

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

## Verwendete Plugins

Die wichtigsten MMO-Plugins, die in diesem Projekt konfiguriert werden:

- **MythicMobs**: Custom Mobs, Items und Skills
- **Quests Plugin**: Quest-System
- **Classes/Skills Plugin**: Klassen- und Skill-System
- **Dungeons Plugin**: Instanzierte Dungeons
- **Citizens/NPCs**: NPC-System

## Verwendung

Jeder Server-Ordner (Skyblock, RPG) enthält seine eigenen Plugin-Konfigurationen.

Die Konfigurationsdateien können direkt in die entsprechenden Plugin-Ordner auf dem Server kopiert werden:
```bash
# Beispiel für MythicMobs Items
plugins/MythicMobs/Items/ <- Skyblock/MythicMobs/Items/
```

## Beitragen

Dies ist ein persönliches Projekt für meinen Minecraft Server.

## Version

- Minecraft Version: 1.21.10
- Server Software: Paper
- Proxy: Velocity
