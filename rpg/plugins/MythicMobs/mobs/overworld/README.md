# Overworld-Mobs System für MythicMobs

## Übersicht
Vollständiges Overworld-Mob-System mit leveled Custom-Mobs für 10 verschiedene Zonen auf dem RPG-Server.

**Map-Größe:** 3000x2500 Blöcke  
**Biome:** 13  
**Dörfer:** 12  
**Castles/Tempel:** 6  

---

## Zonen-Übersicht

| Zone | Datei | Level-Range | Mobs | Region |
|------|-------|-------------|------|--------|
| 1. Spawnpoint | zone_spawnpoint.yml | 1-10 | 12 | `spawnpoint` |
| 2. Waldland | zone_waldland.yml | 10-20 | 13 | `waldland` |
| 3. Dschungel | zone_dschungel.yml | 20-35 | 13 | `dschungel` |
| 4. Sumpfland | zone_sumpfland.yml | 25-40 | 13 | `sumpfland` |
| 5. Wüste | zone_wueste.yml | 35-50 | 13 | `wueste` |
| 6. Vulkan | zone_vulkan.yml | 50-65 | 13 | `vulkan` |
| 7. Eisland | zone_eisland.yml | 45-60 | 13 | `eisland` |
| 8. Pilzinsel | zone_pilzinsel.yml | 55-70 | 13 | `pilzinsel` |
| 9. Burgen | zone_burgen.yml | 60-80 | 13 | `burgen_red`, `burgen_purple`, `burgen_prisma` |
| 10. Tempel | zone_tempel.yml | 75-100 | 13 | `tempel_greek`, `tempel_blossom` |
| **GESAMT** | | 1-100 | **129** | |

---

## Mob-Kategorien

### Normale Mobs (ca. 9 pro Zone)
- Spawn-Chance: 0.10 - 0.15
- Drops: Zone-Material (30%), Gold Coins, XP

### Elite-Mobs (2 pro Zone)
- Spawn-Chance: 0.025 - 0.03
- Glowing-Effekt
- Höhere Stats (2-3x normale Mobs)
- Bessere Drops: Zone-Material (100%), Elite-Essenz (50%), mehr XP

### Mini-Bosse (2 pro Zone)
- Spawn-Chance: 0.003 - 0.008
- BossBar aktiviert
- Sehr hohe Stats
- Beste Drops: Zone-Material (100%), Boss-Essenz (100%), seltene Waffen/Rüstung (10-20%), viel XP

---

## WorldGuard Regionen einrichten

Erstelle die folgenden Regionen mit WorldGuard:

```bash
# Zone 1: Spawnpoint
/rg define spawnpoint

# Zone 2: Waldland
/rg define waldland

# Zone 3: Dschungel
/rg define dschungel

# Zone 4: Sumpfland
/rg define sumpfland

# Zone 5: Wüste
/rg define wueste

# Zone 6: Vulkan
/rg define vulkan

# Zone 7: Eisland
/rg define eisland

# Zone 8: Pilzinsel
/rg define pilzinsel

# Zone 9: Burgen
/rg define burgen_red
/rg define burgen_purple
/rg define burgen_prisma

# Zone 10: Tempel
/rg define tempel_greek
/rg define tempel_blossom
```

**Wichtig:** Die Regionen müssen vor dem Server-Start oder vor dem Reload von MythicMobs erstellt werden!

---

## Installation

1. **Regionen erstellen** (siehe oben)
2. **Server neu starten** oder `/mm reload` ausführen
3. **Mobs testen:**
   ```bash
   /mm mobs spawn WILDSCHWEIN 1
   /mm mobs spawn ELITE_WILDSCHWEIN 1
   /mm mobs spawn ALPHA_WOLF 1
   ```

---

## Dateistruktur

```
RPG/plugins/MythicMobs/
├── mobs/
│   └── overworld/
│       ├── zone_spawnpoint.yml       (Level 1-10, 12 Mobs)
│       ├── zone_waldland.yml         (Level 10-20, 13 Mobs)
│       ├── zone_dschungel.yml        (Level 20-35, 13 Mobs)
│       ├── zone_sumpfland.yml        (Level 25-40, 13 Mobs)
│       ├── zone_wueste.yml           (Level 35-50, 13 Mobs)
│       ├── zone_vulkan.yml           (Level 50-65, 13 Mobs)
│       ├── zone_eisland.yml          (Level 45-60, 13 Mobs)
│       ├── zone_pilzinsel.yml        (Level 55-70, 13 Mobs)
│       ├── zone_burgen.yml           (Level 60-80, 13 Mobs)
│       ├── zone_tempel.yml           (Level 75-100, 13 Mobs)
│       └── README.md                 (Diese Datei)
│
├── skills/
│   └── overworld/
│       └── mob_skills.yml            (Alle Mob-Skills)
│
└── randomspawns/
    ├── zone_spawnpoint_spawns.yml
    ├── zone_waldland_spawns.yml
    ├── zone_dschungel_spawns.yml
    ├── zone_sumpfland_spawns.yml
    ├── zone_wueste_spawns.yml
    ├── zone_vulkan_spawns.yml
    ├── zone_eisland_spawns.yml
    ├── zone_pilzinsel_spawns.yml
    ├── zone_burgen_spawns.yml
    └── zone_tempel_spawns.yml
```

---

## Mob-Skills

Alle Skills sind in `skills/overworld/mob_skills.yml` definiert:

### Basis-Skills
- **WolfBiss**: Schaden + Slow-Effekt
- **SpinnenGift**: Poison-Effekt
- **SchlangenGift**: Poison + Weakness
- **GiftAura**: AoE Poison-Effekt
- **Feuerball**: Projektil mit Feuer-Schaden

### Elite-Skills
- **EliteAura**: Glowing + Partikel-Effekt
- **EliteSchlag**: 2x Schaden + Knockback

### Boss-Skills
- **BossRuf**: Spawn-Ankündigung
- **BossSchlag**: 2.5x Schaden + starker Knockback
- **SonnenFlare**: AoE Feuer-Schaden
- **ZeusBlitz**: Lightning-Angriff
- **TempelErdbeben**: Massiver AoE-Schaden

---

## Drops

### Normale Mobs
```yaml
Drops:
  - MMOItem{type=MATERIAL;id=<ZONE_MATERIAL>} 0.3 1
  - MMOItem{type=MATERIAL;id=GOLD_COIN} 0.2 1-3
  - exp <level * 3>-<level * 5>
```

### Elite-Mobs
```yaml
Drops:
  - MMOItem{type=MATERIAL;id=<ZONE_MATERIAL>} 1.0 2-4
  - MMOItem{type=MATERIAL;id=GOLD_COIN} 0.8 5-15
  - MMOItem{type=MATERIAL;id=ELITE_ESSENZ} 0.5 1
  - exp <level * 8>-<level * 12>
```

### Mini-Bosse
```yaml
Drops:
  - MMOItem{type=MATERIAL;id=<ZONE_MATERIAL>} 1.0 5-10
  - MMOItem{type=MATERIAL;id=GOLD_COIN} 1.0 50-100
  - MMOItem{type=MATERIAL;id=BOSS_ESSENZ} 1.0 1
  - MMOItem{type=WEAPON/ARMOR;id=<ZONE_EQUIPMENT>} 0.1-0.2 1
  - exp <level * 15>-<level * 25>
```

---

## Balancing-Hinweise

### Spawn-Chancen anpassen
In den `zone_*_spawns.yml` Dateien:
- **Normale Mobs**: 0.10 - 0.15 (Standard)
- **Elite-Mobs**: 0.025 - 0.03 (Standard)
- **Mini-Bosse**: 0.003 - 0.008 (Standard)

### Stats anpassen
In den `zone_*.yml` Dateien:
- **Health**: HP des Mobs
- **Damage**: Basis-Schaden
- **Armor**: Rüstungswert (reduziert Schaden)
- **MovementSpeed**: Bewegungsgeschwindigkeit (0.2-0.35)

---

## Zone-Details

### Zone 1: Spawnpoint (Level 1-10)
**Thema:** Starter-Gebiet, friedliche Kreaturen, Banditen  
**Gebiet:** Spawnpoint Castle, Stable Farms, Village (Mitte)  
**Empfohlene Items:** Starter-Waffen, Leder-Rüstung

### Zone 2: Waldland (Level 10-20)
**Thema:** Dunkle Wälder, Werwölfe, Ents  
**Gebiet:** Red Village, Wild Farms, Blossom Temple Umgebung  
**Empfohlene Items:** Eisen-Waffen, Ketten-Rüstung

### Zone 3: Dschungel (Level 20-35)
**Thema:** Dschungel-Kreaturen, Maya-Krieger, Gift  
**Gebiet:** Jungle Village, Maya Pyramid  
**Empfohlene Items:** Gift-Resistenz, Gold-Rüstung

### Zone 4: Sumpfland (Level 25-40)
**Thema:** Sumpf-Untote, Hexen, Gift  
**Gebiet:** Swamp Island, Mangrove Village  
**Empfohlene Items:** Gift-Resistenz, Untoten-Waffen

### Zone 5: Wüste (Level 35-50)
**Thema:** Wüsten-Kreaturen, Mumien, Pharaonen  
**Gebiet:** Desert Biome, Village (Nordwest), Mines  
**Empfohlene Items:** Feuer-Resistenz, Diamant-Waffen

### Zone 6: Vulkan (Level 50-65)
**Thema:** Feuer-Dämonen, Magma-Kreaturen  
**Gebiet:** Volcano, Lava Dungeon  
**Empfohlene Items:** Feuer-Resistenz, Netherite-Rüstung

### Zone 7: Eisland (Level 45-60)
**Thema:** Frost-Kreaturen, Yetis  
**Gebiet:** Ice Biome, Winter Village  
**Empfohlene Items:** Frost-Resistenz, Diamant-Rüstung

### Zone 8: Pilzinsel (Level 55-70)
**Thema:** Giftige Pilz-Kreaturen, Halluzinationen  
**Gebiet:** Mushroom Island  
**Empfohlene Items:** Gift-Resistenz, Verwirrung-Resistenz

### Zone 9: Burgen (Level 60-80)
**Thema:** Geisterritter, verfluchte Wachen  
**Gebiet:** Red Castle, Purple Castle, Prisma Castle  
**Empfohlene Items:** Untoten-Waffen, Netherite-Rüstung

### Zone 10: Tempel (Level 75-100) - ENDGAME
**Thema:** Mythische Kreaturen, Götter-Avatare  
**Gebiet:** Greek Temple, Blossom Temple  
**Empfohlene Items:** Beste Ausrüstung, alle Resistenzen

---

## Fehlerbehebung

### Mobs spawnen nicht
1. Überprüfe, ob die WorldGuard-Regionen existieren: `/rg info <region>`
2. Reload MythicMobs: `/mm reload`
3. Überprüfe die Console auf Fehler
4. Teste manuelles Spawnen: `/mm mobs spawn <MOB_ID> 1`

### Mobs sind zu stark/schwach
1. Öffne die entsprechende `zone_*.yml` Datei
2. Passe `Health`, `Damage` und `Armor` an
3. Reload MythicMobs: `/mm reload`

### Skills funktionieren nicht
1. Überprüfe `skills/overworld/mob_skills.yml`
2. Stelle sicher, dass die Skill-Namen korrekt sind
3. Reload MythicMobs: `/mm reload`

---

## Credits

Erstellt für: **Festas/MinecraftMMO**  
Version: **1.0**  
Datum: **Januar 2026**

---

## Changelog

### Version 1.0 (Januar 2026)
- Initial Release
- 10 Zonen mit 129 Mobs
- Komplett ausgearbeitetes Skill-System
- RandomSpawns für alle Zonen
