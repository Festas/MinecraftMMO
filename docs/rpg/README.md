# RPG-Server - Übersicht

Dokumentation für den vollständigen MMO-RPG Server mit Open World, Quests, Dungeons und mehr.

---

## Server-Informationen

**Server-Typ:** Paper 1.21.10  
**Hauptfokus:** Open World MMO-RPG mit Quest-System, Dungeons und Klassen  
**Spieler-Kapazität:** 50-100 Spieler  
**Synchronisation:** HuskSync mit Skyblock-Server  

---

## Kern-Features

### 1. Open World
- Mehrere Zonen mit unterschiedlichen Level-Bereichen
- Dynamische Events und Welt-Bosse
- Haupt-Hub-Stadt für Spieler-Interaktion
- Schnellreise-System zwischen Zonen

### 2. Quest-System (BetonQuest)
- Hauptquest-Linie mit Story
- Hunderte von Nebenquests
- Tägliche und wöchentliche Quests
- Quest-Chains mit Entscheidungen

### 3. Dungeon-System (MythicDungeons)
- Instanzierte Dungeons für Gruppen
- Mehrere Schwierigkeitsgrade
- Boss-Kämpfe mit Mechaniken
- Exklusive Loot-Belohnungen

### 4. Mob-System (MythicMobs Premium)
- Custom Mobs mit einzigartigen Fähigkeiten
- Elite-Mobs und Welt-Bosse
- Level-skalierte Gegner
- Umfangreiche Loot-Tables

### 5. NPC-System (Citizens + BetonQuest)
- Quest-Geber
- Händler und Trainer
- Story-NPCs mit Dialogen
- Dynamische NPCs

---

## Plugin-Stack

### Core MMO
- **MMOCore** - Klassen-System (6 Klassen)
- **MMOItems** - Custom Items mit Stats
- **MythicLib** - Basis-Library

### Content
- **MythicMobs Premium** - Custom Mobs und Bosse
- **MythicDungeons** - Instanzierte Dungeons
- **MythicCrucible** - Advanced Item Creation
- **BetonQuest** - Quest-System
- **Citizens** - NPC-System

### Items & Crafting
- **Oraxen** - Custom Texturen
- **ModelEngine** - 3D Models
- **MythicCrucible** - Crafting-System

### Economy & Progression
- **CoinsEngine** - Multi-Währungs-System
- **MythicAchievements** - Achievements
- **Aurora** - Quests/Achievements Alternative

### World & Building
- **FastAsyncWorldEdit** - World Editing
- **RoseGarden** - World Management
- **Bluemap** - 3D-Webkarte

### Utility
- **HuskSync** - Daten-Synchronisation
- **LuckPerms** - Permissions
- **PlaceholderAPI** - Platzhalter
- **DecentHolograms** - Hologramme

---

## Server-Struktur

### Welt-Layout
```
RPG-Server/
├── World (Overworld)
│   ├── Hub-Stadt (Spawn-Point)
│   ├── Zone 1 (Level 1-15)
│   ├── Zone 2 (Level 15-30)
│   ├── Zone 3 (Level 30-50)
│   ├── Zone 4 (Level 50-70)
│   └── Zone 5 (Level 70-100)
├── Nether (Endgame-Zone)
└── End (Raid-Zone)
```

### Dungeons (Separate Welten)
- 10-15 instanzierte Dungeons
- Level-Range: 15-100
- 2-4 Schwierigkeitsgrade pro Dungeon

---

## Progression-Übersicht

### Level 1-15: Starter-Zone
- Tutorial-Quests
- Einfache Mobs
- Erste Dungeons (Level 10+)
- Klassen-Auswahl und Basis-Skills

### Level 15-30: Frühe Zone
- Story-Quests
- Mittlere Schwierigkeit Mobs
- Dungeons mit Mechaniken
- Skill-Tree Expansion

### Level 30-50: Mittlere Zone
- Komplexere Quest-Chains
- Elite-Mobs
- Schwere Dungeons
- Ultimate-Skill freischaltbar (Level 50)

### Level 50-70: Fortgeschrittene Zone
- Endgame-Vorbereitung
- Welt-Bosse
- Raid-Dungeons
- Rare Items und Sets

### Level 70-100: Endgame-Zone
- Maximaler Challenge
- Epische Welt-Bosse
- Hardest-Dungeons
- Legendäre und Mythische Items

---

## Content-Typen

### Zonen
- [Zonen-Dokumentation](ZONEN.md)
- Level-Bereiche
- Mob-Verteilung
- Points of Interest
- Quest-Hubs

### Quests
- [Quest-Dokumentation](QUESTS.md)
- Hauptquests (Story)
- Nebenquests
- Tägliche Quests
- Quest-Belohnungen

### Dungeons
- [Dungeon-Dokumentation](DUNGEONS.md)
- Instanzierte Bereiche
- Boss-Mechaniken
- Loot-Tables
- Schwierigkeitsgrade

### Mobs
- [Mob-Dokumentation](MOBS.md)
- Normale Mobs
- Elite-Mobs
- Bosse
- Welt-Bosse

### NPCs
- [NPC-Dokumentation](NPCS.md)
- Quest-Geber
- Händler
- Trainer
- Story-NPCs

---

## Shared Content

### Mit Skyblock synchronisiert:
- ✅ Klassen und Level (MMOCore)
- ✅ Skills und Skill-Trees
- ✅ Inventar (Hauptinventar, Rüstung, Offhand)
- ✅ Quest-Progress (BetonQuest)
- ✅ Währungen (CoinsEngine)

### RPG-Server spezifisch:
- ❌ RPG-Dungeons (nicht auf Skyblock)
- ❌ RPG-spezifische Quests
- ❌ Zonen-Progress
- ❌ RPG-Achievements

---

## Siehe auch

- [Klassen-System](../classes/README.md)
- [Item-System](../items/README.md)
- [Economy-System](../economy/README.md)
- [Architektur-Dokumentation](../ARCHITECTURE.md)

---

**Letzte Aktualisierung:** 2026-01-03

**Status:** 🚧 Work in Progress - Server in aktiver Entwicklung
