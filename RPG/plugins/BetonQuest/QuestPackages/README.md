# Modulares BetonQuest System - Düsterwall

Ein vollständiges, modulares Quest-System für BetonQuest basierend auf der mittelalterlichen Fantasy-Hauptstadt **Düsterwall** mit dunklen Zügen.

## 🏰 Setting

- **Welt:** Mittelalter-Fantasy mit dunklen Zügen
- **Hauptstadt:** Düsterwall - Die letzte Bastion der Hoffnung
- **Bedrohung:** Die Leere - Eine schleichende Dunkelheit die das Land korrumpiert
- **Herrscher:** König Nitwit - Ein sonderbarer aber geliebter König der mit seiner Krone spricht

## 📁 Ordnerstruktur

```
RPG/plugins/BetonQuest/QuestPackages/
├── _core/                          # Globale Einstellungen
│   ├── package.yml                 # Globale Variablen
│   ├── conditions.yml              # Wiederverwendbare Bedingungen
│   ├── events.yml                  # Wiederverwendbare Events
│   └── items.yml                   # Quest-Items
│
└── duesterwall/                    # Hauptstadt Quest-Paket
    ├── package.yml                 # NPC-IDs (anpassen!)
    │
    ├── npcs/                       # 7 Charaktere
    │   ├── koenig_nitwit.yml      # Sonderbarer König
    │   ├── wachhauptmann_thorvald.yml  # Veteranen-Krieger
    │   ├── schmiedemeister_grimjaw.yml # Zwergischer Schmied
    │   ├── kraeuterfrau_morgana.yml    # Mysteriöse Heilerin
    │   ├── jaegermeister_fenris.yml    # Wolfszähmer
    │   ├── haendler_berthold.yml       # Gieriger Kaufmann
    │   └── wirt_hammund.yml            # Tavernen-Besitzer
    │
    ├── hauptquest/                 # Hauptquest-Linie
    │   ├── package.yml
    │   └── kapitel_01_das_erwachen.yml  # 7 Quests
    │
    ├── nebenquests/                # Nebenquests
    │   ├── package.yml
    │   ├── der_vermisste_sohn.yml  # Hammunds Sohn
    │   └── rattenproblem.yml       # Bertholds Rattenproblem
    │
    ├── daily/                      # Tägliche Quests
    │   ├── package.yml
    │   ├── erze_fuer_grimjaw.yml   # 20 Erze sammeln
    │   ├── kraeuter_fuer_morgana.yml   # 10 Kräuter sammeln
    │   └── monster_vor_den_toren.yml   # 15 Monster töten
    │
    └── slayer/                     # Langzeit-Progressions-System
        ├── package.yml
        ├── untoten_jaeger.yml      # 5 Tiers: Zombies, Skelette
        ├── spinnen_jaeger.yml      # 5 Tiers: Spinnen
        └── daemonen_jaeger.yml     # 5 Tiers: Hexen, Illager
```

## 🎮 Quest-Systeme

### Hauptquest: Kapitel 1 - Das Erwachen
7 aufeinanderfolgende Quests die in die Welt von Düsterwall einführen:

1. **Das Erwachen** - Spieler erwacht mit mysteriösem Mal
2. **Audienz beim König** - Treffen mit König Nitwit
3. **Erste Prüfung** - Kampftest (5 Zombies)
4. **Der Schmied** - Material sammeln (10 Eisenerze)
5. **Gerüchte im Wind** - Mit 3 NPCs sprechen
6. **Der dunkle Wald** - Erste Begegnung mit der Leere
7. **Bericht an den König** - Kapitelabschluss + Titel [Königlicher Bote]

**Belohnungen:** XP, Gold, Ausrüstung, Titel

### Nebenquests

#### Der vermisste Sohn
- **Quest-Geber:** Wirt Hammund
- **Story:** Sein Sohn Torin ist im östlichen Wald verschwunden
- **Twist:** Der Sohn hat die Leere gesehen und ist traumatisiert
- **Belohnung:** 300 Gold, 200 XP, freie Mahlzeiten

#### Rattenproblem
- **Quest-Geber:** Händler Berthold
- **Aufgabe:** 10 Ratten töten + Nest zerstören
- **Belohnung:** 200 Gold, 100 XP, 10% Rabatt für 1 Woche

### Daily Quests (Level 5+)
Täglich zurücksetzende Quests um 4:00 Uhr:

1. **Erze für Grimjaw** - 20 Erze sammeln → 100 Gold + 50 XP
2. **Kräuter für Morgana** - 10 Kräuter sammeln → 100 Gold + Heiltrank
3. **Monster vor den Toren** - 15 Monster töten → 150 Gold + 100 XP

### Slayer-System
Langzeit-Progression mit 5 Tiers pro Kategorie:

#### Untoten-Jäger (Level 10+)
- **Monster:** Zombie, Skeleton, Drowned, Husk, Stray
- **Tier I:** 10 Kills → 50 Gold + 100 XP
- **Tier II:** 25 Kills → 150 Gold + 300 XP
- **Tier III:** 50 Kills → 400 Gold + 750 XP (Level 10)
- **Tier IV:** 100 Kills → 1000 Gold + 2000 XP (Level 20)
- **Tier V:** 250 Kills → 3000 Gold + 5000 XP + **[Untoten-Vernichter]** (Level 35)

#### Spinnen-Jäger (Level 10+)
- **Monster:** Spider, Cave Spider
- **Titel bei Tier V:** **[Spinnen-Bezwinger]**

#### Dämonen-Jäger (Level 15+)
- **Monster:** Witch, Evoker, Vindicator, Pillager
- **Titel bei Tier V:** **[Dämonen-Schlächter]**
- Schwierigster Pfad mit höheren Level-Anforderungen

## ⚙️ Setup & Installation

### 1. Citizens NPCs erstellen
Erstelle 7 Citizens NPCs in Düsterwall:
- König Nitwit (im Thronsaal)
- Wachhauptmann Thorvald (am Stadttor)
- Schmiedemeister Grimjaw (in der Schmiede)
- Kräuterfrau Morgana (im Kräuterladen)
- Jägermeister Fenris (bei den Ställen)
- Händler Berthold (im Handelshaus)
- Wirt Hammund (in der Taverne "Zuflucht")

### 2. NPC-IDs anpassen
Bearbeite `duesterwall/package.yml` und trage die Citizens NPC-IDs ein:

```yaml
npcs:
  koenig_nitwit: "1"           # Deine NPC-ID
  wachhauptmann_thorvald: "2"  # Deine NPC-ID
  # ... usw.
```

### 3. Koordinaten anpassen
Folgende Dateien enthalten Location-Koordinaten die angepasst werden müssen:

- `hauptquest/kapitel_01_das_erwachen.yml`:
  - quest1_thorvald: Stadttor-Position
  - quest6_dunkler_wald: Position des korrupten Waldes
  
- `nebenquests/der_vermisste_sohn.yml`:
  - finde_torin_wald: Position im östlichen Wald
  
- `nebenquests/rattenproblem.yml`:
  - finde_nest: Position in Bertholds Keller

**Format:** `location X;Y;Z;Radius`

### 4. Daily Quest Reset einrichten
Die Daily Quests müssen täglich um 4:00 Uhr zurückgesetzt werden.

**Option A - Mit BetonQuest Schedule (empfohlen):**
Füge zu `config.yml` hinzu:
```yaml
schedules:
  daily_reset:
    time: "04:00"
    events:
      - "duesterwall.daily.erze_fuer_grimjaw.daily_erze_reset"
      - "duesterwall.daily.kraeuter_fuer_morgana.daily_kraeuter_reset"
      - "duesterwall.daily.monster_vor_den_toren.daily_monster_reset"
```

**Option B - Mit Server Cron:**
Verwende `/bq event duesterwall.daily.QUESTNAME.daily_QUEST_reset` um 4:00 Uhr

### 5. Citizens NPC Assignment
Weise die Conversations den NPCs zu:

```
/npc select [NPC]
/npc assignment --set duesterwall.koenig_nitwit
```

Für alle 7 NPCs entsprechend.

## 🎨 Features

### ✨ Charaktere mit Persönlichkeit
- **König Nitwit:** Vergesslicher, sonderbarer König mit Momenten der Klarheit
- **Thorvald:** Ernster Veteranen-Krieger
- **Grimjaw:** Grummeliger aber herzlicher Zwergenschmied
- **Morgana:** Mysteriöse Heilerin mit Geheimnissen
- **Fenris:** Narbengesichtiger Wolfszähmer
- **Berthold:** Gieriger aber nützlicher Kaufmann
- **Hammund:** Warmherziger Tavernen-Besitzer

### 📖 Journal-System
Alle Quests haben Journal-Einträge für Tracking

### 🎁 Belohnungssystem
- Gold via PlayerPoints
- Minecraft Experience
- Custom Items (Schwerter, Rüstungen)
- Heiltränke
- Rabatte
- Titel (über Tags implementiert)

### 🔄 Modulares Design
- Wiederverwendbare Components im `_core` Package
- Einfach erweiterbar mit neuen Kapiteln
- Klare Trennung von Quest-Typen

## 🔧 Technische Details

### Dependencies
- **BetonQuest** 2.0+
- **Citizens** für NPCs
- **PlayerPoints** für Gold-Währung
- Optional: **MythicMobs** für Custom Monster (Leere-Kreaturen)

### Verwendete BetonQuest Features
- Conversations mit player_options und NPC_options
- Objectives (mobkill, block, location)
- Conditions und Tags für Quest-Tracking
- Events für Belohnungen und Progression
- Journal für Quest-Tracking
- Items für Quest-Gegenstände

## 📝 Notizen für Admins

### Quest-Aktivierung
Spieler starten die Hauptquest automatisch beim Gespräch mit Thorvald am Stadttor.

### Level-Requirements
- Hauptquest: Keine (ab Level 1)
- Daily Quests: Level 5+
- Slayer Untote/Spinnen: Level 10+
- Slayer Dämonen: Level 15+

### Balancing
Alle Belohnungen und Kill-Counts können in den jeweiligen YAML-Dateien angepasst werden.

### Erweiterungen
Um neue Kapitel hinzuzufügen, erstelle neue Dateien im Format:
- `hauptquest/kapitel_02_TITEL.yml`
- Link sie im `hauptquest/package.yml`

## 🐛 Troubleshooting

**Problem:** NPCs reagieren nicht
- **Lösung:** Prüfe NPC-IDs in `duesterwall/package.yml`
- Verwende `/npc list` um IDs zu finden

**Problem:** Objectives werden nicht getrackt
- **Lösung:** Prüfe BetonQuest Logs
- Verwende `/bq objectives list` um aktive Objectives zu sehen

**Problem:** Daily Quests resetten nicht
- **Lösung:** Prüfe Schedule-Konfiguration
- Teste manuell mit `/bq event PACKAGE.EVENT`

## 📚 Weitere Ressourcen

- [BetonQuest Documentation](https://docs.betonquest.org/)
- [BetonQuest Discord](https://discord.gg/betonquest)
- [Citizens Wiki](https://wiki.citizensnpcs.co/)

## 🎭 Story-Ausblick

Das System ist für Erweiterungen vorbereitet:
- **Kapitel 2:** Die Leere verbreitet sich
- **Kapitel 3:** Die Quelle der Dunkelheit
- **Finale:** Konfrontation mit der Leere
- Weitere NPCs und Fraktionen
- Neue Slayer-Kategorien
- Dungeons und Raids

---

**Viel Erfolg in Düsterwall! Möge das Licht die Dunkelheit vertreiben!** ⚔️🛡️
