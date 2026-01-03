# Quest-System - RPG-Server

BetonQuest Struktur, Templates und Quest-Erstellung.

---

## BetonQuest Struktur

BetonQuest ist ein hochentwickeltes Quest-System mit:
- **Conversations:** NPC-Dialoge
- **Events:** Aktionen die ausgeführt werden
- **Conditions:** Bedingungen die erfüllt sein müssen
- **Objectives:** Quest-Ziele die erreicht werden müssen
- **Variables:** Dynamische Werte

---

## Quest-Typen

### 1. Hauptquests (Main Quests)
- Teil der Hauptstory
- Linear oder mit Verzweigungen
- Wichtige Belohnungen
- Schaltet weitere Content frei

### 2. Nebenquests (Side Quests)
- Optional, nicht story-kritisch
- Zusätzliche Lore und Charaktere
- Moderate Belohnungen
- Wiederholbar oder einmalig

### 3. Tägliche Quests (Daily Quests)
- Jeden Tag verfügbar
- Einfache Objectives (Töte X, Sammle Y)
- Kleinere Belohnungen
- Für Grinding und Progression

### 4. Wöchentliche Quests (Weekly Quests)
- Einmal pro Woche verfügbar
- Anspruchsvoller als Dailies
- Bessere Belohnungen
- Oft Dungeon- oder Boss-bezogen

---

## Quest-Template

### Quest: [QUEST NAME]

#### Basis-Informationen
- **Quest-ID:** <!-- z.B. main_starter_001 -->
- **Quest-Name:** <!-- Anzeige-Name -->
- **Typ:** <!-- Main / Side / Daily / Weekly -->
- **Level-Anforderung:** <!-- Min Level -->
- **Voraussetzungen:** <!-- Vorherige Quests, etc. -->
- **Wiederholbar:** <!-- Ja / Nein / Daily / Weekly -->

#### Story & Beschreibung

**Quest-Geber:** <!-- NPC Name -->

**Beschreibung:**
<!-- TODO: Quest-Text den Spieler sieht -->

**Lore/Kontext:**
<!-- TODO: Hintergrund-Story -->

#### Objectives

**Hauptziele:**
1. <!-- Objective 1 - z.B. "Töte 10 Banditen" -->
   - Typ: <!-- kill / collect / reach / interact -->
   - Details: <!-- Spezifische Anforderungen -->
2. <!-- Objective 2 -->

**Optional-Ziele:**
- <!-- Bonus-Objective 1 -->
- <!-- Bonus-Objective 2 -->

#### Belohnungen

**XP:** <!-- Menge -->  
**Geld:** <!-- Coins -->  
**Items:**
- <!-- Item 1 -->
- <!-- Item 2 -->

**Optional-Belohnungen:** <!-- Für Bonus-Objectives -->
- <!-- Bonus Reward -->

**Ruf/Faction:** <!-- +X bei Faction Y -->

#### Dialoge

**Start-Dialog:**
```
NPC: "<!-- Dialog Text -->"
Spieler: 
  [1] "<!-- Antwort-Option 1 -->" → Quest akzeptieren
  [2] "<!-- Antwort-Option 2 -->" → Quest ablehnen
```

**Progress-Dialog:**
```
NPC: "<!-- Text während Quest -->"
```

**Completion-Dialog:**
```
NPC: "<!-- Text bei Abschluss -->"
Spieler: "<!-- Antwort -->"
```

#### BetonQuest YAML

```yaml
# conversations/QUEST_ID.yml
quests:
  QUEST_ID:
    NPC_option:
      text: "<!-- NPC Text -->"
    player_options:
      accept:
        text: "<!-- Annahme Text -->"
        conditions: level_requirement
        events: quest_start
      decline:
        text: "<!-- Ablehnung Text -->"
        events: quest_decline

# events.yml
events:
  quest_start: "objective start QUEST_ID_obj1"
  quest_complete: "give coins:100, experience:500, item:reward_sword"

# conditions.yml
conditions:
  level_requirement: "level 10"
  previous_quest: "quest main_starter_001 completed"

# objectives.yml
objectives:
  QUEST_ID_obj1: "kill bandit 10 events:quest_progress"
  QUEST_ID_obj2: "location 100;64;200 10 events:quest_complete"
```

#### Testing-Checkliste

- [ ] Quest kann akzeptiert werden
- [ ] Objectives funktionieren korrekt
- [ ] Belohnungen werden vergeben
- [ ] Dialoge sind vollständig
- [ ] Voraussetzungen werden geprüft
- [ ] Quest kann abgeschlossen werden

---

## Beispiel-Quest: "Die Banditen-Bedrohung"

### Quest: Die Banditen-Bedrohung

#### Basis-Informationen
- **Quest-ID:** main_starter_001
- **Quest-Name:** "Die Banditen-Bedrohung"
- **Typ:** Main Quest
- **Level-Anforderung:** Level 5
- **Voraussetzungen:** Tutorial-Quest abgeschlossen
- **Wiederholbar:** Nein

#### Story & Beschreibung

**Quest-Geber:** Bürgermeister Johann (Willkommens-Dorf)

**Beschreibung:**
"Banditen überfallen unsere Händler! Hilf uns, indem du einige von ihnen ausschaltest und ihren Anführer findest."

**Lore/Kontext:**
Eine Banditen-Gruppe hat sich im Wald niedergelassen und bedroht die Handelswege. Der Bürgermeister bittet den Spieler um Hilfe, um das Dorf zu schützen.

#### Objectives

**Hauptziele:**
1. Töte 10 Banditen
   - Typ: kill
   - Details: Normale Banditen in der Starter-Zone
2. Finde das Banditenlager
   - Typ: reach_location
   - Details: Koordinaten X:300, Z:250
3. Besiege den Banditen-Anführer
   - Typ: kill
   - Details: Elite-Mob "Banditen-Anführer"

**Optional-Ziele:**
- Finde den gestohlenen Brief (Bonus-XP)

#### Belohnungen

**XP:** 500 XP  
**Geld:** 100 Coins  
**Items:**
- Eisernes Schwert (Uncommon)
- 5x Heiltränke

**Optional-Belohnungen:**
- +50 XP für Brief
- Titel: "Banditenjäger"

**Ruf/Faction:** +50 Ruf bei Willkommens-Dorf

#### Dialoge

**Start-Dialog:**
```
Bürgermeister Johann: "Abenteurer! Gut, dass ihr da seid. Banditen terrorisieren unsere Händler!"
Spieler: 
  [1] "Ich werde helfen!" → Quest akzeptieren
  [2] "Noch nicht bereit." → Quest ablehnen
```

**Progress-Dialog:**
```
Bürgermeister Johann: "Habt ihr die Banditen gefunden?"
[Wenn Objectives nicht erfüllt]: "Kommt zurück, wenn ihr mehr erledigt habt."
```

**Completion-Dialog:**
```
Bürgermeister Johann: "Ihr habt es geschafft! Das Dorf ist sicher. Nehmt diese Belohnung!"
Spieler: "Gerne geschehen, Bürgermeister."
```

#### Testing-Checkliste

- [x] Quest kann akzeptiert werden
- [x] Banditen-Kill-Zähler funktioniert
- [x] Location-Objective wird getriggert
- [x] Boss-Kill schließt Quest ab
- [x] Belohnungen werden vergeben
- [x] Follow-up-Quest wird freigeschaltet

---

## Quest-Design-Richtlinien

### Story-Integration
- Quests sollten zur Welt-Lore beitragen
- NPCs sollten Persönlichkeit haben
- Verzweigungen und Konsequenzen sind gut

### Balance
- **XP-Belohnungen:** 
  - Main Quest: 300-1000 XP
  - Side Quest: 100-500 XP
  - Daily: 50-200 XP
- **Geld-Belohnungen:**
  - Main Quest: 100-500 Coins
  - Side Quest: 50-200 Coins
  - Daily: 20-100 Coins

### Objectives-Vielfalt
Vermeide nur "Kill X, Collect Y" - nutze:
- Erkundungs-Objectives
- Interaktions-Objectives
- Schutz-Objectives
- Zeit-basierte Objectives
- Rätsel und Geheimnisse

### Quest-Chains
- Baue zusammenhängende Geschichten
- 3-5 Quests pro Story-Arc ideal
- Jede Quest sollte eigenständig funktionieren
- Gesamte Chain erzählt größere Story

---

## BetonQuest Best Practices

### Conversations
```yaml
conversations:
  quest_name:
    quester: "NPC_Name"
    first: "greeting"
    NPC_options:
      greeting:
        text: "Hello, %player%!"
        pointer: "ask_quest"
    player_options:
      accept:
        text: "I'll help you!"
        conditions: "level_requirement"
        events: "quest_start"
```

### Events
```yaml
events:
  quest_start: "journal add quest_journal, objective start quest_obj"
  quest_reward: "give item:iron_sword, give money:100, experience 500"
  quest_fail: "journal remove quest_journal, notify &cQuest Failed!"
```

### Conditions
```yaml
conditions:
  level_requirement: "level 10"
  has_quest: "journal quest_journal"
  quest_done: "objective quest_obj completed"
  has_item: "item iron_sword 1"
```

### Objectives
```yaml
objectives:
  kill_bandits: "kill bandit 10 events:bandit_killed notify:Bandits_Killed:_#/#"
  reach_camp: "location 100;64;200 10 events:camp_reached"
  collect_items: "collect iron_sword 5 events:items_collected"
```

---

## Quest-Pipeline

1. **Konzept** - Story und Ziele definieren
2. **NPCs erstellen** - Quest-Geber platzieren (Citizens)
3. **YAML schreiben** - BetonQuest Dateien erstellen
4. **Testing** - Quest durchspielen
5. **Balancing** - Belohnungen anpassen
6. **Review** - Story und Dialoge überprüfen
7. **Release** - Quest freischalten

---

## Siehe auch

- [RPG-Server Übersicht](README.md)
- [NPC-System](NPCS.md)
- [Zonen-System](ZONEN.md)
- [Workflows für Quests](../WORKFLOWS.md#2-neue-quest-erstellen-betonquest)

---

**Letzte Aktualisierung:** 2026-01-03

**Status:** 🚧 Work in Progress - Templates zum Ausfüllen bereit
