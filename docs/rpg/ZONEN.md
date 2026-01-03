# Zonen-System - RPG-Server

Template und Struktur für alle Zonen im RPG-Server.

---

## Zonen-Übersicht

Eine **Zone** ist ein geografisch abgegrenztes Gebiet mit eigenem Thema, Level-Range, Mobs, NPCs und Quests.

### Geplante Zonen (Work in Progress)

| Zone | Level-Range | Thema | Status |
|------|-------------|-------|--------|
| Hub-Stadt | Alle Level | Hauptstadt, sozialer Hub | 🚧 Planung |
| Starter-Tal | 1-15 | Friedliche Starter-Zone | 🚧 Planung |
| Dunkler Wald | 15-30 | Gefährlicher Wald | 🚧 Planung |
| Wüstenruinen | 30-50 | Antike Ruinen | 🚧 Planung |
| Frostgebirge | 50-70 | Schnee und Eis | 🚧 Planung |
| Schattenlande | 70-100 | Endgame-Zone | 🚧 Planung |

---

## Zonen-Template

Nutze dieses Template für jede neue Zone.

### Zone: [NAME]

#### Basis-Informationen
- **Name:** <!-- Zone Name -->
- **Level-Range:** <!-- z.B. 15-30 -->
- **Empfohlene Spieler:** <!-- Solo / Gruppe / Beide -->
- **Größe:** <!-- Klein / Mittel / Groß / Sehr Groß -->
- **Thema:** <!-- Kurze Beschreibung des Themas -->
- **Biome:** <!-- z.B. Wald, Gebirge, Wüste -->

#### Lore & Story
<!-- TODO: Kurze Geschichte/Hintergrund der Zone -->

_Die [Zone Name] ist bekannt für..._

**Haupt-Story-Elemente:**
- <!-- Story-Punkt 1 -->
- <!-- Story-Punkt 2 -->
- <!-- Story-Punkt 3 -->

#### Geografie

**Landmarks:**
1. <!-- Wichtiger Ort 1 -->
2. <!-- Wichtiger Ort 2 -->
3. <!-- Wichtiger Ort 3 -->

**Städte/Dörfer:**
- <!-- Settlement 1 - Beschreibung -->
- <!-- Settlement 2 - Beschreibung -->

**Dungeons in Zone:**
- <!-- Dungeon 1 → Link zu DUNGEONS.md -->
- <!-- Dungeon 2 → Link zu DUNGEONS.md -->

#### Mobs

**Normale Mobs (Level X-Y):**

| Mob-Name | Level | HP | Schaden | Spawn-Rate | Drops |
|----------|-------|-----|---------|------------|-------|
| <!-- Mob 1 --> | <!-- X --> | <!-- HP --> | <!-- DMG --> | <!-- Häufig --> | <!-- Items --> |
| <!-- Mob 2 --> | <!-- X --> | <!-- HP --> | <!-- DMG --> | <!-- Mittel --> | <!-- Items --> |

**Elite-Mobs (Level X-Y):**

| Mob-Name | Level | HP | Schaden | Spawn-Rate | Special Abilities | Drops |
|----------|-------|-----|---------|------------|-------------------|-------|
| <!-- Elite 1 --> | <!-- X --> | <!-- HP --> | <!-- DMG --> | <!-- Selten --> | <!-- Abilities --> | <!-- Rare Items --> |

**Welt-Bosse:**

| Boss-Name | Level | HP | Schaden | Respawn-Timer | Location | Drops |
|-----------|-------|-----|---------|---------------|----------|-------|
| <!-- Boss 1 --> | <!-- X --> | <!-- HP --> | <!-- DMG --> | <!-- 2h --> | <!-- Koordinaten --> | <!-- Legendary Items --> |

#### NPCs

**Quest-Geber:**
- **[NPC Name]** - Location: [Koordinaten] - Quests: [Quest Namen]

**Händler:**
- **[NPC Name]** - Location: [Koordinaten] - Verkauft: [Waren-Typ]

**Trainer:**
- **[NPC Name]** - Location: [Koordinaten] - Funktion: [Training-Typ]

**Story-NPCs:**
- **[NPC Name]** - Location: [Koordinaten] - Rolle: [Story-Rolle]

#### Quests

**Hauptquests:**
1. <!-- Quest Name → Quest-ID → Link zu QUESTS.md -->
2. <!-- Quest Name → Quest-ID → Link zu QUESTS.md -->

**Nebenquests:**
1. <!-- Quest Name → Quest-ID → Link zu QUESTS.md -->
2. <!-- Quest Name → Quest-ID → Link zu QUESTS.md -->
3. <!-- Quest Name → Quest-ID → Link zu QUESTS.md -->

**Tägliche Quests:**
- <!-- Daily Quest 1 -->
- <!-- Daily Quest 2 -->

#### Ressourcen & Items

**Sammelbare Ressourcen:**
- <!-- Ressource 1 --> - Spawn-Rate: <!-- Häufigkeit -->
- <!-- Ressource 2 --> - Spawn-Rate: <!-- Häufigkeit -->

**Zonen-spezifische Items:**
- <!-- Item 1 --> - Drop-Quelle: <!-- Mob/Boss -->
- <!-- Item 2 --> - Drop-Quelle: <!-- Mob/Boss -->

#### Schnellreise

**Teleport-Punkte:**
- <!-- Waypoint 1 --> - Location: [Koordinaten]
- <!-- Waypoint 2 --> - Location: [Koordinaten]

**Voraussetzungen:**
- <!-- Quest abgeschlossen? Level-Requirement? -->

#### Balance & Design-Notizen

**Schwierigkeitsgrad:**
- Solo-Spielbarkeit: <!-- Einfach / Mittel / Schwer -->
- Gruppen-Content: <!-- Ja / Nein / Optional -->

**Design-Ziele:**
<!-- TODO: Was soll diese Zone erreichen? -->

**Bekannte Probleme:**
- [ ] <!-- Problem 1 -->
- [ ] <!-- Problem 2 -->

**TODO:**
- [ ] <!-- Offener Punkt 1 -->
- [ ] <!-- Offener Punkt 2 -->

---

## Beispiel-Zone: Starter-Tal

### Zone: Starter-Tal

#### Basis-Informationen
- **Name:** Starter-Tal (Tranquil Vale)
- **Level-Range:** 1-15
- **Empfohlene Spieler:** Solo
- **Größe:** Mittel
- **Thema:** Friedliche Starter-Zone mit Tutorial-Elementen
- **Biome:** Wiesen, kleine Wälder, Flüsse

#### Lore & Story

_Das Starter-Tal ist ein friedlicher Ort, wo neue Abenteurer ihre Reise beginnen. Geschützt von den Bergen ist es ein sicherer Hafen für Anfänger._

**Haupt-Story-Elemente:**
- Spieler erwacht im Tal ohne Erinnerungen
- Lernt von lokalen NPCs über die Welt
- Erste Bedrohung durch Banditen
- Entdeckt erste Hinweise auf größere Gefahr

#### Geografie

**Landmarks:**
1. **Willkommens-Dorf** - Haupt-Hub mit NPCs
2. **Alter Leuchtturm** - Quest-Location
3. **Banditenlager** - Mini-Dungeon für Level 10+

**Städte/Dörfer:**
- **Willkommens-Dorf** - Sicherer Spawn-Point, alle Basis-NPCs

**Dungeons in Zone:**
- **Banditenhöhle** → [Link zu DUNGEONS.md] (Level 10-15)

#### Mobs

**Normale Mobs (Level 1-10):**

| Mob-Name | Level | HP | Schaden | Spawn-Rate | Drops |
|----------|-------|-----|---------|------------|-------|
| Wildschwein | 1-3 | 30-50 | 5-8 | Häufig | Rohes Schweinefleisch, Leder |
| Wolf | 3-6 | 50-80 | 8-12 | Mittel | Wolfsfell, Zahn |
| Bandit | 5-10 | 100-150 | 15-20 | Selten | Banditenschwert, Coins |

**Elite-Mobs (Level 8-12):**

| Mob-Name | Level | HP | Schaden | Spawn-Rate | Special Abilities | Drops |
|----------|-------|-----|---------|------------|-------------------|-------|
| Banditen-Anführer | 10 | 500 | 30 | Sehr Selten | Ruf verstärkung | Uncommon Schwert, 50 Coins |

**Welt-Bosse:**
- Keine (Starter-Zone)

#### NPCs

**Quest-Geber:**
- **Bürgermeister Johann** - Location: Willkommens-Dorf (X:100, Z:200) - Quests: Tutorial-Reihe
- **Alte Hexe Mara** - Location: Wald-Hütte (X:250, Z:180) - Quests: Sammel-Quests

**Händler:**
- **Schmied Grom** - Location: Willkommens-Dorf - Verkauft: Anfänger-Waffen & Rüstung
- **Händler Lisa** - Location: Willkommens-Dorf - Verkauft: Tränke, Essen

**Trainer:**
- **Kampfmeister Aldrin** - Location: Trainingsplatz - Funktion: Erklärt Kampf-Mechaniken

#### Quests

**Hauptquests:**
1. "Willkommen in der Welt" → tutorial_001 → [Link zu QUESTS.md]
2. "Die Banditen-Bedrohung" → main_starter_001 → [Link zu QUESTS.md]

**Nebenquests:**
1. "Schweineprobleme" → side_starter_001
2. "Verlorene Katze" → side_starter_002
3. "Kräuter sammeln" → side_starter_003

**Tägliche Quests:**
- "Tägliche Jagd" - Töte 10 Tiere
- "Tägliches Sammeln" - Sammle 20 Kräuter

#### Ressourcen & Items

**Sammelbare Ressourcen:**
- Heilkräuter - Spawn-Rate: Häufig
- Holz - Spawn-Rate: Sehr häufig
- Eisenerz - Spawn-Rate: Selten (in Höhlen)

**Zonen-spezifische Items:**
- Anfänger-Schwert - Drop-Quelle: Banditen
- Leder-Rüstungs-Set - Crafting / Händler

#### Schnellreise

**Teleport-Punkte:**
- Willkommens-Dorf - Location: (X:100, Z:200) - Immer verfügbar

**Voraussetzungen:**
- Keine (Starter-Zone)

#### Balance & Design-Notizen

**Schwierigkeitsgrad:**
- Solo-Spielbarkeit: Einfach
- Gruppen-Content: Nein (außer Banditenhöhle optional)

**Design-Ziele:**
- Sanfte Einführung in Spiel-Mechaniken
- Keine Todesfälle durch normale Mobs
- Tutorial-Quest vermittelt alle Basics
- Vorbereitung auf schwerere Zonen

**Bekannte Probleme:**
- [ ] Mob-Spawn-Rate eventuell zu hoch
- [ ] Mehr Landmark-Varianz gewünscht

**TODO:**
- [ ] Mehr Nebenquests hinzufügen (Ziel: 10+)
- [ ] Lore-Bücher platzieren
- [ ] Versteckte Geheimnisse einbauen

---

## Design-Richtlinien für Zonen

### Größe & Scope
- **Klein:** 200x200 Blöcke - Schnelle Durchquerung
- **Mittel:** 500x500 Blöcke - Standard-Zone
- **Groß:** 1000x1000 Blöcke - Haupt-Zonen
- **Sehr Groß:** 2000x2000+ Blöcke - Endgame-Zonen

### Level-Skalierung
- Mobs skalieren innerhalb der Zone (+/- 5 Level Varianz)
- Elite-Mobs sind +5-10 Level über normalen Mobs
- Welt-Bosse sind +10-20 Level über Zonen-Maximum

### Mob-Dichte
- **Starter-Zonen:** Niedriger (Solo-freundlich)
- **Mittlere Zonen:** Mittel (Solo mit Vorsicht)
- **Endgame-Zonen:** Hoch (Gruppen empfohlen)

### Quest-Verteilung
- Mindestens 1 Hauptquest pro Zone
- 5-15 Nebenquests je nach Zonengröße
- 2-3 Tägliche Quests für Wiederholbarkeit

---

## Siehe auch

- [RPG-Server Übersicht](README.md)
- [Quest-System](QUESTS.md)
- [Mob-System](MOBS.md)
- [NPC-System](NPCS.md)
- [Dungeon-System](DUNGEONS.md)

---

**Letzte Aktualisierung:** 2026-01-03

**Status:** 🚧 Work in Progress - Templates zum Ausfüllen bereit
