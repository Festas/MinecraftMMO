# Slayer Tier V Bosse - Dokumentation

Diese Dokumentation beschreibt die drei epischen Slayer Tier V Bosse für das MinecraftMMO Server-System.

## Übersicht

Drei mächtige Endgame-Bosse, die für das Slayer-System entwickelt wurden:

1. **Nekromant Malachar** - Untoten-Slayer Tier V Boss
2. **Spinnenkönigin Arachnia** - Spinnen-Slayer Tier V Boss  
3. **Dunkler Magier Vexorin** - Dämonen-Slayer Tier V Boss

## Design-Prinzipien

- ✅ **Solo möglich, aber SEHR schwer** - Optimal mit 2-4 Spielern
- ✅ **Mehrere Kampfphasen** - Wie WoW/FFXIV Bosse
- ✅ **Einzigartige Mechaniken** - Jeder Boss fühlt sich anders an
- ✅ **Vanilla-Mobs mit Partikel-Effekten** - Keine ModelEngine erforderlich
- ✅ **Epische deutsche Dialoge** - Immersives Erlebnis
- ✅ **Feste Arena-Locations** - Spieler gehen zum Boss
- ✅ **1 Stunde Server-weiter Respawn** - Nach dem Kill

## Dateistruktur

```
RPG/plugins/MythicMobs/
├── mobs/slayer_bosse/
│   ├── nekromant_malachar.yml          # Boss 1 Konfiguration
│   ├── spinnenkoenigin_arachnia.yml    # Boss 2 Konfiguration
│   ├── dunkler_magier_vexorin.yml      # Boss 3 Konfiguration
│   └── boss_minions.yml                # Alle Minion-Mobs
│
├── skills/slayer_bosse/
│   ├── nekromant_skills.yml            # Boss 1 Skills
│   ├── spinnenkoenigin_skills.yml      # Boss 2 Skills
│   ├── dunkler_magier_skills.yml       # Boss 3 Skills
│   └── shared_boss_skills.yml          # Gemeinsame Skills
│
└── items/slayer_bosse/
    └── boss_drops.yml                  # MMOItems Drops
```

---

## Boss 1: Nekromant Malachar

### Stats
- **Typ:** Wither Skeleton
- **Leben:** 5000 HP
- **Schaden:** 20 (15-25 pro Hit)
- **Rüstung:** 12
- **Empfohlene Spieler:** 2-4

### Kampfphasen

**Phase 1 (100%-70% HP): Der Erwachte**
- Basis-Nahkampf-Angriffe
- `Todesgriff` - Zieht einen Spieler zum Boss (alle 20s)
- Spawnt alle 30s 3 Skelett-Diener

**Phase 2 (70%-40% HP): Die Armee**
- Spawnt alle 20s 5 Skelett-Diener
- `Seelenraub` - AoE Schaden (8 Blöcke) + Heilung für Boss (alle 25s)
- `Knochenkäfig` - Umgibt Spieler mit Verlangsamung für 5s (alle 30s)

**Phase 3 (40%-0% HP): Verzweiflung**
- +30% Bewegungsgeschwindigkeit, +30% Schaden
- Spawnt 2 Skelett-Champions (Mini-Bosse, 500 HP)
- `Apokalypse der Toten` - 5s Kanal, massiver AoE Schaden, kann unterbrochen werden

### Drops
- 100%: Seele des Nekromanten (Quest-Item)
- 100%: 3000 Gold
- 100%: 5000 XP
- 25%: Stab der Verdammnis (Legendary Weapon)
- 100%: Titel [Untoten-Vernichter]

### Spawn-Befehl
```
/mm mobs spawn NekromantMalachar 1
```

---

## Boss 2: Spinnenkönigin Arachnia

### Stats
- **Typ:** Spider (Size: 3)
- **Leben:** 4500 HP
- **Schaden:** 16 (12-20 pro Hit)
- **Rüstung:** 8
- **Gift-Schaden:** 3/s für 10s
- **Empfohlene Spieler:** 2-4

### Kampfphasen

**Phase 1 (100%-60% HP): Das Nest**
- Schnelle Nahkampf-Angriffe mit Gift
- `Giftspucke` - Ranged Gift-AoE (alle 15s)
- Spawnt alle 25s 4 Spinnlinge

**Phase 2 (60%-30% HP): Die Jägerin**
- `Netzfalle` - Immobilisiert Spieler mit Cobweb (alle 20s)
- `Hinterhalt` - Teleportiert hinter zufälligen Spieler (alle 25s)
- Spawnt 2 Giftspinnen (explodieren bei Tod in Gift-AoE)
- Wird unsichtbar für 3s, dann Überraschungsangriff

**Phase 3 (30%-0% HP): Die Brutmutter**
- RASEREI: Spawnt kontinuierlich Spinnlinge (alle 10s)
- `Kokon` - Wickelt Spieler ein (Slowness 10 + Wither)
- `Schwarm` - Befiehlt allen Spinnen gleichzeitig anzugreifen
- +40% Bewegungsgeschwindigkeit

### Drops
- 100%: Herz der Königin (Quest-Item)
- 100%: 3000 Gold
- 100%: 5000 XP
- 25%: Spinnenseide-Bogen (Legendary Weapon)
- 100%: Titel [Spinnen-Bezwinger]

### Spawn-Befehl
```
/mm mobs spawn SpinnenkoeniginArachnia 1
```

---

## Boss 3: Dunkler Magier Vexorin

### Stats
- **Typ:** Evoker
- **Leben:** 6000 HP
- **Schaden:** 28 (20-35 pro Hit)
- **Rüstung:** 15
- **Magischer Schaden:** Ignoriert 50% Rüstung
- **Empfohlene Spieler:** 3-5

### Kampfphasen

**Phase 1 (100%-75% HP): Der Gelehrte**
- Fernkampf-Zauber mit hohem Schaden
- `Schattenpfeil` - Zielsuchender Projektil (alle 10s)
- `Leere-Rune` - Platziert explodierende Runen am Boden (alle 20s)
- Teleportiert sich alle 15s zu zufälliger Position

**Phase 2 (75%-50% HP): Der Zerstörer**
- `Leere-Explosion` - Großer AoE um Boss (alle 25s)
- `Dunkle Ketten` - Verbindet 2 Spieler (alle 30s)
- Spawnt "Leere-Splitter" - Schwebende Adds die Boss heilen
- Reflektiert 20% Schaden zurück

**Phase 3 (50%-25% HP): Die Korruption**
- Der Boden wird zu Leere-Zonen (Wither-Schaden)
- `Gedankenkontrolle` - Übernimmt 1 Spieler für 5s
- `Leere-Sturm` - Zieht alle Spieler zur Mitte + AoE
- Spawnt 2 Schattenwächter (Mini-Bosse, 750 HP)

**Phase 4 (25%-0% HP): Finale Verzweiflung**
- ENRAGE: +50% Schaden, +30% Geschwindigkeit
- `Dimensionsriss` - Riesiger AoE nach 3s Warnung (Instant Kill)
- `Leere-Apokalypse` - 10s Kanal, MUSS unterbrochen werden!

### Drops
- 100%: Fragment der Leere (Quest-Item für Hauptquest Kapitel 2!)
- 100%: 5000 Gold
- 100%: 8000 XP
- 25%: Stab der Leere (Legendary Weapon)
- 5%: Leere-Rüstungsteil (Mythic Armor)
- 100%: Titel [Dämonen-Schlächter]

### Spawn-Befehl
```
/mm mobs spawn DunklerMagierVexorin 1
```

---

## Minion-Mobs

### Nekromant Malachar
- **Skelett-Diener** (100 HP) - Normale Skelette
- **Skelett-Champion** (500 HP) - Mini-Boss in Phase 3

### Spinnenkönigin Arachnia
- **Spinnling** (50 HP) - Kleine schnelle Spinnen
- **Giftspinne** (150 HP) - Explodiert bei Tod

### Dunkler Magier Vexorin
- **Leere-Splitter** (200 HP) - Heilt den Boss
- **Schattenwächter** (750 HP) - Mini-Boss in Phase 3

---

## Installation

1. Kopiere alle Dateien in das MythicMobs-Verzeichnis
2. Führe `/mm reload` aus
3. Teste mit `/mm mobs spawn <BossName> 1`

## Wichtige Hinweise

### Arena-Setup
Die Bosse sollten in festen Arenen spawnen. Empfohlene Arena-Größe: **30x30 Blöcke**

### Respawn-Mechanik
Für 1-Stunden Server-weiten Respawn verwende:
```yaml
# In spawn_configs.yml oder per Spawner
Respawn:
  Enabled: true
  Delay: 3600  # 1 Stunde in Sekunden
```

### Titel-System
Die Titel werden über LuckPerms vergeben:
- `titles.untoten_vernichter` - Nekromant Malachar
- `titles.spinnen_bezwinger` - Spinnenkönigin Arachnia
- `titles.daemonen_schlaechter` - Dunkler Magier Vexorin

### MMOItems Integration
Stelle sicher, dass die folgenden MMOItems existieren:
- `SEELE_DES_NEKROMANTEN`
- `HERZ_DER_KOENIGIN`
- `FRAGMENT_DER_LEERE`
- `STAB_DER_VERDAMMNIS`
- `SPINNENSEIDE_BOGEN`
- `STAB_DER_LEERE`
- `LEERE_RUESTUNG_TEIL`
- `GOLD_COIN`

Alle Items sind in `items/slayer_bosse/boss_drops.yml` definiert.

---

## Balancing-Tipps

### Zu schwer?
- Erhöhe `Health` in den Boss-Dateien
- Reduziere `Damage` Werte
- Erhöhe Timer-Intervalle für Skills

### Zu einfach?
- Senke `Health` Werte
- Erhöhe `Damage` Werte
- Verkürze Timer-Intervalle
- Füge mehr Minions hinzu

---

## Support & Anpassungen

Die Konfigurationen sind modular aufgebaut und können einfach angepasst werden:

- **Schaden ändern:** Passe `Damage` in den Mob-Dateien an
- **Skills anpassen:** Bearbeite die entsprechenden Skill-Dateien
- **Drops ändern:** Ändere die `Drops` Sektion in den Mob-Dateien
- **Dialoge ändern:** Bearbeite die `message` Skills

Viel Erfolg beim Besiegen der Bosse! 🗡️
