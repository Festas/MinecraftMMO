# 🔮 MAGIER (Mage)

## Übersicht
Der **Magier** ist der mächtigste Schadensbringer auf mittlere bis lange Distanz. Mit Stoffroben bekleidet und von Mana durchströmt, entfesselt der Magier verheerende Elementarzauber. Die Klasse basiert auf hoher Intelligenz und effizientem Mana-Management.

**Spielstil**: Glas-Kanone mit extrem hohem Schaden, aber geringer Verteidigung. Fokus auf Elementar-Kombos und Mana-Kontrolle.

## Waffentypen
- **Stäbe (STAFF)**: Mächtige Zweihandwaffen mit hohem Skill-Schaden
- **Zauberstäbe (WAND)**: Schnelle Einhandwaffen für Zauber-Spam
- **Kampfstäbe (BATTLE_STAFF)**: Defensive Zweihandstäbe mit Mana-Regeneration

## Rüstungstyp
**Stoffroben** - Leichteste Rüstung mit Fokus auf magische Attribute:
- Hohe Intelligenz
- Massive Mana-Regeneration
- Skill-Schadens-Verstärkung
- Cooldown-Reduktion
- Elementar-Resistenzen

## Dateien
- `waffen.yml` - Alle Waffen (Stäbe, Zauberstäbe)
- `ruestung.yml` - Alle Rüstungsteile (Kapuze, Robe, Hose, Schuhe)
- `schmuck.yml` - Ringe und Amulette mit Mana- und Intelligenz-Boni
- `offhand.yml` - Orbs und Zauberbücher

## Tier-System

| Tier | Name | Level | Farbe |
|------|------|-------|-------|
| T1 | Gewöhnlich | 1 | Weiß |
| T2 | Ungewöhnlich | 12 | Grün |
| T3 | Selten | 22 | Blau |
| T4 | Episch | 38 | Lila |
| T5 | Legendär | 55 | Orange |
| T6 | Mythisch | 78 | Rot |

## Detaillierte Item-Tabellen

### Stäbe (STAFF)

| ID | Name | Tier | Level | Magischer Schaden | Mana | Besonderheit |
|----|------|------|-------|-------------------|------|--------------|
| MAGIER_STAB_T1 | Alter Holzstab | Gewöhnlich | 1 | 6-9 | +20 | - |
| MAGIER_STAB_T2 | Mystischer Eichenstab | Ungewöhnlich | 12 | 10-15 | +40 | +5 Intelligenz |
| MAGIER_STAB_T3 | Elementarstab der Macht | Selten | 22 | 16-23 | +70 | +12 Intelligenz, +10% Skill-Schaden |
| MAGIER_STAB_T4 | Runenstab des Meisters | Episch | 38 | 25-36 | +120 | +22 Intelligenz, +18% Skill-Schaden, -10% Cooldown |
| MAGIER_STAB_T5 | Legendärer Archmage-Stab | Legendär | 55 | 38-54 | +200 | +38 Intelligenz, +28% Skill-Schaden, -18% Cooldown, Ability: Elementarexplosion |
| MAGIER_STAB_T6 | Mythischer Welten-Stab | Mythisch | 78 | 58-82 | +350 | +60 Intelligenz, +40% Skill-Schaden, -28% Cooldown, Ability: Arkanes Chaos |

### Zauberstäbe (WAND)

| ID | Name | Tier | Level | Magischer Schaden | Mana | Besonderheit |
|----|------|------|-------|-------------------|------|--------------|
| MAGIER_ZAUBERSTAB_T1 | Einfacher Zauberstab | Gewöhnlich | 1 | 4-6 | +15 | Schnelle Angriffe |
| MAGIER_ZAUBERSTAB_T2 | Kristall-Zauberstab | Ungewöhnlich | 12 | 7-10 | +30 | +4 Intelligenz, Schnell |
| MAGIER_ZAUBERSTAB_T3 | Blitz-Zauberstab | Selten | 22 | 11-16 | +55 | +9 Intelligenz, +15% Angriffsgeschwindigkeit |
| MAGIER_ZAUBERSTAB_T4 | Runen-Zauberstab | Episch | 38 | 17-24 | +95 | +16 Intelligenz, +25% Angriffsgeschwindigkeit, Blitz-Effekt |
| MAGIER_ZAUBERSTAB_T5 | Legendärer Arkaner Stab | Legendär | 55 | 26-37 | +160 | +28 Intelligenz, +35% Angriffsgeschwindigkeit, Ability: Arkanes Sperrfeuer |
| MAGIER_ZAUBERSTAB_T6 | Mythischer Sternenstab | Mythisch | 78 | 40-56 | +280 | +45 Intelligenz, +50% Angriffsgeschwindigkeit, Ability: Sternensturm |

### Kampfstäbe (BATTLE_STAFF)

| ID | Name | Tier | Level | Magischer Schaden | Mana | Besonderheit |
|----|------|------|-------|-------------------|------|--------------|
| MAGIER_KAMPFSTAB_T1 | Verstärkter Stab | Gewöhnlich | 1 | 5-8 | +25 | +1 Mana/Sek |
| MAGIER_KAMPFSTAB_T2 | Wächter-Stab | Ungewöhnlich | 12 | 9-13 | +50 | +2 Mana/Sek, +3 Intelligenz |
| MAGIER_KAMPFSTAB_T3 | Beschützer-Stab | Selten | 22 | 14-20 | +85 | +4 Mana/Sek, +10 Intelligenz, +5% Mana-Reg |
| MAGIER_KAMPFSTAB_T4 | Runen-Wächter-Stab | Episch | 38 | 22-31 | +145 | +7 Mana/Sek, +18 Intelligenz, +10% Mana-Reg, Barriere |
| MAGIER_KAMPFSTAB_T5 | Legendärer Verteidiger-Stab | Legendär | 55 | 33-47 | +245 | +12 Mana/Sek, +32 Intelligenz, +18% Mana-Reg, Ability: Mana-Schild |
| MAGIER_KAMPFSTAB_T6 | Mythischer Festungs-Stab | Mythisch | 78 | 50-71 | +420 | +20 Mana/Sek, +50 Intelligenz, +30% Mana-Reg, Ability: Unzerbrechliche Barriere |

### Rüstung - Kapuze (HELMET)

| ID | Name | Tier | Level | Rüstung | Mana | Besonderheit |
|----|------|------|-------|---------|------|--------------|
| MAGIER_KAPUZE_T1 | Alte Stoffkapuze | Gewöhnlich | 1 | 1 | +15 | - |
| MAGIER_KAPUZE_T2 | Seidenkapuze des Lernenden | Ungewöhnlich | 12 | 2 | +35 | +5 Intelligenz |
| MAGIER_KAPUZE_T3 | Verzauberte Kapuze | Selten | 22 | 3 | +60 | +10 Intelligenz, +8% Skill-Schaden |
| MAGIER_KAPUZE_T4 | Runen-Kapuze des Meisters | Episch | 38 | 5 | +105 | +18 Intelligenz, +15% Skill-Schaden, +5% Mana-Reg |
| MAGIER_KAPUZE_T5 | Legendäre Archmage-Kapuze | Legendär | 55 | 8 | +180 | +32 Intelligenz, +25% Skill-Schaden, +12% Mana-Reg, -8% Cooldown |
| MAGIER_KAPUZE_T6 | Mythische Welten-Kapuze | Mythisch | 78 | 12 | +300 | +52 Intelligenz, +38% Skill-Schaden, +22% Mana-Reg, -15% Cooldown |

### Rüstung - Robe (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Mana | Besonderheit |
|----|------|------|-------|---------|------|--------------|
| MAGIER_ROBE_T1 | Alte Stoffrobe | Gewöhnlich | 1 | 2 | +25 | - |
| MAGIER_ROBE_T2 | Seidenrobe des Lernenden | Ungewöhnlich | 12 | 4 | +55 | +8 Intelligenz |
| MAGIER_ROBE_T3 | Verzauberte Robe | Selten | 22 | 6 | +95 | +16 Intelligenz, +10% Skill-Schaden |
| MAGIER_ROBE_T4 | Runen-Robe des Meisters | Episch | 38 | 9 | +165 | +30 Intelligenz, +20% Skill-Schaden, +8% Mana-Reg |
| MAGIER_ROBE_T5 | Legendäre Archmage-Robe | Legendär | 55 | 14 | +280 | +52 Intelligenz, +32% Skill-Schaden, +18% Mana-Reg, -10% Cooldown |
| MAGIER_ROBE_T6 | Mythische Welten-Robe | Mythisch | 78 | 21 | +480 | +85 Intelligenz, +48% Skill-Schaden, +30% Mana-Reg, -20% Cooldown |

### Rüstung - Hose (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Mana | Besonderheit |
|----|------|------|-------|---------|------|--------------|
| MAGIER_HOSE_T1 | Alte Stoffhose | Gewöhnlich | 1 | 1 | +20 | - |
| MAGIER_HOSE_T2 | Seidenhose des Lernenden | Ungewöhnlich | 12 | 3 | +45 | +6 Intelligenz |
| MAGIER_HOSE_T3 | Verzauberte Hose | Selten | 22 | 5 | +80 | +13 Intelligenz, +8% Skill-Schaden |
| MAGIER_HOSE_T4 | Runen-Hose des Meisters | Episch | 38 | 7 | +140 | +24 Intelligenz, +16% Skill-Schaden, +6% Mana-Reg |
| MAGIER_HOSE_T5 | Legendäre Archmage-Hose | Legendär | 55 | 11 | +240 | +42 Intelligenz, +28% Skill-Schaden, +15% Mana-Reg, -8% Cooldown |
| MAGIER_HOSE_T6 | Mythische Welten-Hose | Mythisch | 78 | 17 | +410 | +68 Intelligenz, +42% Skill-Schaden, +25% Mana-Reg, -16% Cooldown |

### Rüstung - Schuhe (BOOTS)

| ID | Name | Tier | Level | Rüstung | Mana | Besonderheit |
|----|------|------|-------|---------|------|--------------|
| MAGIER_SCHUHE_T1 | Alte Stoffschuhe | Gewöhnlich | 1 | 1 | +10 | - |
| MAGIER_SCHUHE_T2 | Seidenschuhe des Lernenden | Ungewöhnlich | 12 | 2 | +25 | +4 Intelligenz |
| MAGIER_SCHUHE_T3 | Verzauberte Schuhe | Selten | 22 | 3 | +45 | +8 Intelligenz, +5% Bewegungsgeschwindigkeit |
| MAGIER_SCHUHE_T4 | Runen-Schuhe des Meisters | Episch | 38 | 4 | +80 | +14 Intelligenz, +8% Bewegungsgeschwindigkeit, +3% Mana-Reg |
| MAGIER_SCHUHE_T5 | Legendäre Archmage-Schuhe | Legendär | 55 | 6 | +135 | +25 Intelligenz, +12% Bewegungsgeschwindigkeit, +10% Mana-Reg |
| MAGIER_SCHUHE_T6 | Mythische Welten-Schuhe | Mythisch | 78 | 9 | +230 | +40 Intelligenz, +18% Bewegungsgeschwindigkeit, +18% Mana-Reg |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| MAGIER_RING_T1 | Einfacher Manaring | Gewöhnlich | 1 | +3 Intelligenz, +10 Mana |
| MAGIER_RING_T2 | Ring des Gelehrten | Ungewöhnlich | 12 | +7 Intelligenz, +25 Mana, +5% Skill-Schaden |
| MAGIER_RING_T3 | Ring der Weisheit | Selten | 22 | +12 Intelligenz, +45 Mana, +10% Skill-Schaden |
| MAGIER_RING_T4 | Runenring der Magie | Episch | 38 | +20 Intelligenz, +80 Mana, +18% Skill-Schaden, -5% Cooldown |
| MAGIER_RING_T5 | Legendärer Arkaner Ring | Legendär | 55 | +34 Intelligenz, +140 Mana, +28% Skill-Schaden, -12% Cooldown |
| MAGIER_RING_T6 | Mythischer Ring der Unendlichkeit | Mythisch | 78 | +55 Intelligenz, +240 Mana, +42% Skill-Schaden, -20% Cooldown |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| MAGIER_AMULETT_T1 | Einfaches Mana-Amulett | Gewöhnlich | 1 | +15 Mana |
| MAGIER_AMULETT_T2 | Amulett der Konzentration | Ungewöhnlich | 12 | +35 Mana, +5 Intelligenz, +3% Mana-Reg |
| MAGIER_AMULETT_T3 | Amulett des Arkanisten | Selten | 22 | +65 Mana, +10 Intelligenz, +8% Mana-Reg, +5% Skill-Schaden |
| MAGIER_AMULETT_T4 | Runen-Amulett der Macht | Episch | 38 | +115 Mana, +18 Intelligenz, +15% Mana-Reg, +12% Skill-Schaden |
| MAGIER_AMULETT_T5 | Legendäres Archmage-Amulett | Legendär | 55 | +195 Mana, +32 Intelligenz, +25% Mana-Reg, +22% Skill-Schaden, Feuer-Immunität |
| MAGIER_AMULETT_T6 | Mythisches Götter-Amulett | Mythisch | 78 | +335 Mana, +52 Intelligenz, +40% Mana-Reg, +35% Skill-Schaden, Elementar-Immunität |

### Offhand - Orbs (ORB)

| ID | Name | Tier | Level | Mana | Besonderheit |
|----|------|------|-------|------|--------------|
| MAGIER_ORB_T1 | Kristallkugel | Gewöhnlich | 1 | +20 | +2 Intelligenz |
| MAGIER_ORB_T2 | Magische Kugel | Ungewöhnlich | 12 | +40 | +6 Intelligenz, +5% Skill-Schaden |
| MAGIER_ORB_T3 | Elementar-Orb | Selten | 22 | +70 | +11 Intelligenz, +10% Skill-Schaden, +5% Mana-Reg |
| MAGIER_ORB_T4 | Runen-Orb | Episch | 38 | +120 | +19 Intelligenz, +18% Skill-Schaden, +10% Mana-Reg |
| MAGIER_ORB_T5 | Legendärer Arkaner Orb | Legendär | 55 | +205 | +33 Intelligenz, +28% Skill-Schaden, +18% Mana-Reg, -8% Cooldown |
| MAGIER_ORB_T6 | Mythischer Welten-Orb | Mythisch | 78 | +350 | +54 Intelligenz, +42% Skill-Schaden, +30% Mana-Reg, -15% Cooldown |

### Offhand - Zauberbücher (SPELLBOOK)

| ID | Name | Tier | Level | Mana | Besonderheit |
|----|------|------|-------|------|--------------|
| MAGIER_BUCH_T1 | Altes Zauberbuch | Gewöhnlich | 1 | +15 | +3 Intelligenz |
| MAGIER_BUCH_T2 | Gelehrtenbuch | Ungewöhnlich | 12 | +35 | +7 Intelligenz, -3% Cooldown |
| MAGIER_BUCH_T3 | Buch der Weisheit | Selten | 22 | +60 | +12 Intelligenz, -6% Cooldown, +8% Mana-Reg |
| MAGIER_BUCH_T4 | Runenbuch der Macht | Episch | 38 | +105 | +21 Intelligenz, -10% Cooldown, +15% Mana-Reg |
| MAGIER_BUCH_T5 | Legendäres Grimoire | Legendär | 55 | +180 | +36 Intelligenz, -16% Cooldown, +25% Mana-Reg, +15% Skill-Schaden |
| MAGIER_BUCH_T6 | Mythisches Necronomicon | Mythisch | 78 | +310 | +58 Intelligenz, -25% Cooldown, +40% Mana-Reg, +28% Skill-Schaden |

## Set-Boni

### T4 Set - Runen-Magier (4 Teile)
- **2 Teile**: +20 Intelligenz, +80 Mana, +10% Skill-Schaden
- **3 Teile**: +35 Intelligenz, +150 Mana, +20% Skill-Schaden, +10% Mana-Reg
- **4 Teile**: +60 Intelligenz, +280 Mana, +35% Skill-Schaden, +20% Mana-Reg, Ability: Mana-Explosion

### T5 Set - Legendärer Archmage (4 Teile)
- **2 Teile**: +40 Intelligenz, +180 Mana, +20% Skill-Schaden, -8% Cooldown
- **3 Teile**: +70 Intelligenz, +320 Mana, +35% Skill-Schaden, -15% Cooldown, +15% Mana-Reg
- **4 Teile**: +115 Intelligenz, +560 Mana, +55% Skill-Schaden, -25% Cooldown, +30% Mana-Reg, Ability: Arkanes Erwachen

### T6 Set - Mythischer Welten-Magier (4 Teile)
- **2 Teile**: +65 Intelligenz, +350 Mana, +30% Skill-Schaden, -15% Cooldown
- **3 Teile**: +110 Intelligenz, +600 Mana, +50% Skill-Schaden, -25% Cooldown, +25% Mana-Reg
- **4 Teile**: +185 Intelligenz, +1050 Mana, +80% Skill-Schaden, -40% Cooldown, +45% Mana-Reg, Ability: Elementar-Meisterschaft

## Besondere Mechaniken

### Mana-System
- Alle Fähigkeiten kosten Mana
- Mana regeneriert sich pro Sekunde (abhängig von Ausrüstung)
- Bei 0 Mana: Deutlich reduzierter Schaden
- Mana-Überladung: Bei vollem Mana +25% Schaden

### Elementar-Wechsel
Der Magier kann zwischen verschiedenen Elementaren wechseln:
- **Feuer**: +30% Schaden, DoT-Effekte
- **Frost**: Verlangsamung, +20% Kontrolle
- **Blitz**: +50% Angriffsgeschwindigkeit, Kettenschaden
- **Arkana**: +25% zu allen Effekten, höchste Manakosten

### Skill-Schaden-Verstärkung
- Jeder Zauber kann kritisch treffen
- Basis-Krit-Chance: 5%
- Krit-Schaden-Multiplikator: 2.0x
- Skill-Schaden wird durch Intelligenz und Ausrüstung verstärkt

### Cooldown-Reduktion
- Maximale Cooldown-Reduktion: 50%
- Wichtig für kontinuierlichen Schaden
- Set-Boni bieten massive CDR

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `MAGIER_[TYP]_T[1-6]`
- Mana-Skalierung: T1→T2 (+75%), T2→T3 (+70%), T3→T4 (+70%), T4→T5 (+70%), T5→T6 (+70%)
- Skill-Schaden-Skalierung: Beginnt bei T2 mit +5%, steigt progressiv
- Intelligenz ist der Hauptstat, skaliert Skill-Schaden um 1% pro 10 Punkte
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Elementar-Effekte ab T3
