# 🌿 SCHAMANE (Shaman)

## Übersicht
Der **Schamane** ist ein Hybrid aus Heiler und Unterstützer mit naturverbundenen Kräften. Mit Totems und Naturmagie heilt er Verbündete, schwächt Gegner und kontrolliert das Schlachtfeld. Die Klasse ist essenziell für Gruppenspiel und hat starke Überlebensfähigkeiten.

**Spielstil**: Unterstützungs-Hybrid mit Heilung, Buffs und Schadens-über-Zeit-Effekten. Fokus auf Totem-Management und Gruppen-Synergie.

## Waffentypen
- **Naturstäbe (NATURE_STAFF)**: Heilungs- und Schadensstäbe mit Natur-Magie
- **Ritualwaffen (RITUAL_WEAPON)**: Einhandwaffen für Rituale und Beschwörungen
- **Sicheln (SICKLE)**: Schnelle Naturwaffen mit DoT-Effekten

## Rüstungstyp
**Mittlere Kettenrüstung** - Balance zwischen Schutz und magischen Eigenschaften:
- Moderate Rüstungswerte
- Heilungskraft-Verstärkung
- HP-Regeneration
- Totem-Effekt-Verstärkung
- Naturresistenzen

## Dateien
- `waffen.yml` - Alle Waffen (Naturstäbe, Ritualwaffen, Sicheln)
- `ruestung.yml` - Alle Rüstungsteile (Helm, Brustplatte, Beinschutz, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit Heilungs- und Regenerations-Boni
- `offhand.yml` - Totems und Naturschilde

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

### Naturstäbe (NATURE_STAFF)

| ID | Name | Tier | Level | Schaden | Heilung | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| SCHAMANE_NATURSTAB_T1 | Einfacher Holzstab | Gewöhnlich | 1 | 4-6 | +5 HP/s | - |
| SCHAMANE_NATURSTAB_T2 | Lebendiger Eichenstab | Ungewöhnlich | 12 | 7-10 | +10 HP/s | +8% Heilungskraft |
| SCHAMANE_NATURSTAB_T3 | Stab des Lebens | Selten | 22 | 11-16 | +18 HP/s | +18% Heilungskraft, Regeneration I |
| SCHAMANE_NATURSTAB_T4 | Runen-Naturstab | Episch | 38 | 17-24 | +30 HP/s | +32% Heilungskraft, Regeneration II, +Totem-Radius |
| SCHAMANE_NATURSTAB_T5 | Legendärer Weltenbaum-Stab | Legendär | 55 | 26-37 | +50 HP/s | +55% Heilungskraft, Regeneration III, Ability: Lebens-Explosion |
| SCHAMANE_NATURSTAB_T6 | Mythischer Urwald-Stab | Mythisch | 78 | 40-56 | +85 HP/s | +92% Heilungskraft, Regeneration IV, Ability: Naturgewalt |

### Ritualwaffen (RITUAL_WEAPON)

| ID | Name | Tier | Level | Schaden | Mana | Besonderheit |
|----|------|------|-------|---------|------|--------------|
| SCHAMANE_RITUAL_T1 | Einfache Ritualaxt | Gewöhnlich | 1 | 5-7 | +15 | +3% Heilungskraft |
| SCHAMANE_RITUAL_T2 | Schamanenaxt | Ungewöhnlich | 12 | 8-12 | +30 | +10% Heilungskraft, +5 HP Reg |
| SCHAMANE_RITUAL_T3 | Geister-Ritualaxt | Selten | 22 | 13-18 | +55 | +20% Heilungskraft, +10 HP Reg, Geister-Beschwörung |
| SCHAMANE_RITUAL_T4 | Runen-Ritualaxt | Episch | 38 | 20-28 | +95 | +35% Heilungskraft, +18 HP Reg, Totem-Verstärkung I |
| SCHAMANE_RITUAL_T5 | Legendäre Ahnenaxt | Legendär | 55 | 30-42 | +160 | +58% Heilungskraft, +30 HP Reg, Totem-Verstärkung II, Ability: Ahnenruf |
| SCHAMANE_RITUAL_T6 | Mythische Götteraxt | Mythisch | 78 | 46-64 | +280 | +95% Heilungskraft, +52 HP Reg, Totem-Verstärkung III, Ability: Göttlicher Segen |

### Sicheln (SICKLE)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| SCHAMANE_SICHEL_T1 | Einfache Erntesichel | Gewöhnlich | 1 | 4-6 | 1.6 | Blutung I (2s) |
| SCHAMANE_SICHEL_T2 | Schamanensichel | Ungewöhnlich | 12 | 7-10 | 1.6 | Blutung II (3s), +5% Lebensraub |
| SCHAMANE_SICHEL_T3 | Giftsichel | Selten | 22 | 11-15 | 1.6 | Blutung III (5s), Gift II, +10% Lebensraub |
| SCHAMANE_SICHEL_T4 | Runen-Sichel | Episch | 38 | 17-24 | 1.6 | Blutung IV (7s), Gift III, +18% Lebensraub, Verrottung |
| SCHAMANE_SICHEL_T5 | Legendäre Todessichel | Legendär | 55 | 26-36 | 1.6 | Blutung V (10s), Gift IV, +30% Lebensraub, Ability: Seelenernte |
| SCHAMANE_SICHEL_T6 | Mythische Sensenklinge | Mythisch | 78 | 40-55 | 1.6 | Blutung VI (15s), Gift V, +50% Lebensraub, Ability: Tod und Wiedergeburt |

### Rüstung - Helm (HELMET)

| ID | Name | Tier | Level | Rüstung | HP Reg | Besonderheit |
|----|------|------|-------|---------|--------|--------------|
| SCHAMANE_HELM_T1 | Einfacher Kettenhelm | Gewöhnlich | 1 | 2 | +1 HP/s | - |
| SCHAMANE_HELM_T2 | Naturhelm | Ungewöhnlich | 12 | 4 | +3 HP/s | +5% Heilungskraft |
| SCHAMANE_HELM_T3 | Geweihter Helm | Selten | 22 | 6 | +6 HP/s | +12% Heilungskraft, +10 Max HP |
| SCHAMANE_HELM_T4 | Runen-Naturhelm | Episch | 38 | 9 | +11 HP/s | +22% Heilungskraft, +25 Max HP, Regeneration I |
| SCHAMANE_HELM_T5 | Legendärer Druiden-Helm | Legendär | 55 | 14 | +19 HP/s | +38% Heilungskraft, +50 Max HP, Regeneration II |
| SCHAMANE_HELM_T6 | Mythischer Urwald-Helm | Mythisch | 78 | 21 | +32 HP/s | +62% Heilungskraft, +90 Max HP, Regeneration III |

### Rüstung - Brustplatte (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | HP Reg | Besonderheit |
|----|------|------|-------|---------|--------|--------------|
| SCHAMANE_BRUST_T1 | Einfache Kettenplatte | Gewöhnlich | 1 | 4 | +2 HP/s | - |
| SCHAMANE_BRUST_T2 | Naturplatte | Ungewöhnlich | 12 | 7 | +5 HP/s | +8% Heilungskraft |
| SCHAMANE_BRUST_T3 | Geweihte Brustplatte | Selten | 22 | 11 | +10 HP/s | +18% Heilungskraft, +20 Max HP |
| SCHAMANE_BRUST_T4 | Runen-Naturplatte | Episch | 38 | 17 | +18 HP/s | +32% Heilungskraft, +45 Max HP, Regeneration I |
| SCHAMANE_BRUST_T5 | Legendäre Druiden-Platte | Legendär | 55 | 26 | +32 HP/s | +58% Heilungskraft, +85 Max HP, Regeneration II |
| SCHAMANE_BRUST_T6 | Mythische Urwald-Platte | Mythisch | 78 | 39 | +55 HP/s | +95% Heilungskraft, +150 Max HP, Regeneration III |

### Rüstung - Beinschutz (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | HP Reg | Besonderheit |
|----|------|------|-------|---------|--------|--------------|
| SCHAMANE_BEINE_T1 | Einfache Kettenbeine | Gewöhnlich | 1 | 3 | +1 HP/s | - |
| SCHAMANE_BEINE_T2 | Naturbeine | Ungewöhnlich | 12 | 6 | +4 HP/s | +6% Heilungskraft |
| SCHAMANE_BEINE_T3 | Geweihte Beinlinge | Selten | 22 | 9 | +8 HP/s | +15% Heilungskraft, +15 Max HP |
| SCHAMANE_BEINE_T4 | Runen-Naturbeine | Episch | 38 | 14 | +15 HP/s | +28% Heilungskraft, +35 Max HP, Regeneration I |
| SCHAMANE_BEINE_T5 | Legendäre Druiden-Beine | Legendär | 55 | 21 | +26 HP/s | +48% Heilungskraft, +70 Max HP, Regeneration II |
| SCHAMANE_BEINE_T6 | Mythische Urwald-Beine | Mythisch | 78 | 32 | +45 HP/s | +78% Heilungskraft, +125 Max HP, Regeneration III |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | HP Reg | Besonderheit |
|----|------|------|-------|---------|--------|--------------|
| SCHAMANE_STIEFEL_T1 | Einfache Kettenstiefel | Gewöhnlich | 1 | 2 | +1 HP/s | - |
| SCHAMANE_STIEFEL_T2 | Naturstiefel | Ungewöhnlich | 12 | 3 | +3 HP/s | +4% Heilungskraft, +3% Bewegungsgeschw. |
| SCHAMANE_STIEFEL_T3 | Geweihte Stiefel | Selten | 22 | 5 | +6 HP/s | +10% Heilungskraft, +8% Bewegungsgeschw. |
| SCHAMANE_STIEFEL_T4 | Runen-Naturstiefel | Episch | 38 | 8 | +11 HP/s | +20% Heilungskraft, +12% Bewegungsgeschw., Regeneration I |
| SCHAMANE_STIEFEL_T5 | Legendäre Druiden-Stiefel | Legendär | 55 | 12 | +19 HP/s | +35% Heilungskraft, +18% Bewegungsgeschw., Regeneration II |
| SCHAMANE_STIEFEL_T6 | Mythische Urwald-Stiefel | Mythisch | 78 | 18 | +32 HP/s | +58% Heilungskraft, +28% Bewegungsgeschw., Regeneration III |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| SCHAMANE_RING_T1 | Einfacher Naturring | Gewöhnlich | 1 | +3% Heilungskraft, +5 Max HP |
| SCHAMANE_RING_T2 | Ring des Lebens | Ungewöhnlich | 12 | +8% Heilungskraft, +15 Max HP, +2 HP Reg |
| SCHAMANE_RING_T3 | Ring der Regeneration | Selten | 22 | +15% Heilungskraft, +30 Max HP, +5 HP Reg |
| SCHAMANE_RING_T4 | Runenring der Natur | Episch | 38 | +26% Heilungskraft, +55 Max HP, +10 HP Reg, +5% Totem-Effekt |
| SCHAMANE_RING_T5 | Legendärer Druiden-Ring | Legendär | 55 | +42% Heilungskraft, +95 Max HP, +18 HP Reg, +15% Totem-Effekt |
| SCHAMANE_RING_T6 | Mythischer Urwald-Ring | Mythisch | 78 | +68% Heilungskraft, +160 Max HP, +32 HP Reg, +30% Totem-Effekt |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| SCHAMANE_AMULETT_T1 | Einfaches Naturamullet | Gewöhnlich | 1 | +5% Heilungskraft |
| SCHAMANE_AMULETT_T2 | Amulett der Harmonie | Ungewöhnlich | 12 | +12% Heilungskraft, +10 Max HP, +3 HP Reg |
| SCHAMANE_AMULETT_T3 | Amulett des Druiden | Selten | 22 | +22% Heilungskraft, +25 Max HP, +7 HP Reg, +5% Mana Reg |
| SCHAMANE_AMULETT_T4 | Runen-Amulett der Natur | Episch | 38 | +38% Heilungskraft, +50 Max HP, +14 HP Reg, +10% Mana Reg, Gift-Immunität |
| SCHAMANE_AMULETT_T5 | Legendäres Druiden-Amulett | Legendär | 55 | +62% Heilungskraft, +90 Max HP, +25 HP Reg, +18% Mana Reg, Gift & Blutungs-Immunität |
| SCHAMANE_AMULETT_T6 | Mythisches Urwald-Amulett | Mythisch | 78 | +105% Heilungskraft, +155 Max HP, +45 HP Reg, +30% Mana Reg, Alle Natur-Immunitäten |

### Offhand - Totems (TOTEM)

| ID | Name | Tier | Level | Totem-Effekt | Besonderheit |
|----|------|------|-------|--------------|--------------|
| SCHAMANE_TOTEM_T1 | Einfaches Holztotem | Gewöhnlich | 1 | +3 HP/s Aura | 8 Block Radius |
| SCHAMANE_TOTEM_T2 | Verstärktes Totem | Ungewöhnlich | 12 | +6 HP/s Aura | 12 Block Radius, +5% Heilungskraft |
| SCHAMANE_TOTEM_T3 | Lebenstotem | Selten | 22 | +12 HP/s Aura | 16 Block Radius, +12% Heilungskraft, Regeneration I |
| SCHAMANE_TOTEM_T4 | Runen-Totem | Episch | 38 | +22 HP/s Aura | 20 Block Radius, +22% Heilungskraft, Regeneration II, Gruppen-Buffs |
| SCHAMANE_TOTEM_T5 | Legendäres Druiden-Totem | Legendär | 55 | +38 HP/s Aura | 28 Block Radius, +38% Heilungskraft, Regeneration III, Starke Buffs |
| SCHAMANE_TOTEM_T6 | Mythisches Ur-Totem | Mythisch | 78 | +65 HP/s Aura | 40 Block Radius, +65% Heilungskraft, Regeneration IV, Göttliche Buffs |

### Offhand - Naturschilde (NATURE_SHIELD)

| ID | Name | Tier | Level | Blockwert | Besonderheit |
|----|------|------|-------|-----------|--------------|
| SCHAMANE_SCHILD_T1 | Einfacher Rindenschild | Gewöhnlich | 1 | 12% | +5 Max HP |
| SCHAMANE_SCHILD_T2 | Lebendiger Schild | Ungewöhnlich | 12 | 18% | +15 Max HP, +5% Heilungskraft |
| SCHAMANE_SCHILD_T3 | Naturschild | Selten | 22 | 24% | +30 Max HP, +12% Heilungskraft, +3 HP Reg |
| SCHAMANE_SCHILD_T4 | Runen-Naturschild | Episch | 38 | 30% | +55 Max HP, +22% Heilungskraft, +8 HP Reg, Dornen-Effekt |
| SCHAMANE_SCHILD_T5 | Legendärer Druiden-Schild | Legendär | 55 | 38% | +95 Max HP, +38% Heilungskraft, +16 HP Reg, Starke Dornen |
| SCHAMANE_SCHILD_T6 | Mythischer Urwald-Schild | Mythisch | 78 | 48% | +160 Max HP, +65% Heilungskraft, +28 HP Reg, Göttliche Dornen |

## Set-Boni

### T4 Set - Runen-Schamane (4 Teile)
- **2 Teile**: +25% Heilungskraft, +50 Max HP, +15 HP Reg/s
- **3 Teile**: +45% Heilungskraft, +100 Max HP, +28 HP Reg/s, +15% Totem-Effekt
- **4 Teile**: +75% Heilungskraft, +180 Max HP, +48 HP Reg/s, +30% Totem-Effekt, Ability: Gruppen-Heilung

### T5 Set - Legendärer Druide (4 Teile)
- **2 Teile**: +48% Heilungskraft, +110 Max HP, +30 HP Reg/s, +25% Totem-Effekt
- **3 Teile**: +82% Heilungskraft, +200 Max HP, +52 HP Reg/s, +45% Totem-Effekt, Natur-Immunität
- **4 Teile**: +135% Heilungskraft, +350 Max HP, +88 HP Reg/s, +75% Totem-Effekt, Ability: Lebensexplosion (Massive AoE-Heilung)

### T6 Set - Mythischer Urwald-Schamane (4 Teile)
- **2 Teile**: +78% Heilungskraft, +200 Max HP, +55 HP Reg/s, +45% Totem-Effekt
- **3 Teile**: +135% Heilungskraft, +370 Max HP, +95 HP Reg/s, +80% Totem-Effekt, Alle Immunitäten
- **4 Teile**: +225% Heilungskraft, +650 Max HP, +165 HP Reg/s, +140% Totem-Effekt, Ability: Naturgewalt (Unverwundbarkeit + Massive Heilung für Gruppe)

## Besondere Mechaniken

### Totem-System
- Totems können platziert werden und bleiben 30-120 Sekunden
- Totem-Radius skaliert mit Ausrüstung (8-40 Blöcke)
- Effekte:
  - **Heilungs-Totem**: Kontinuierliche Heilung für Verbündete
  - **Stärke-Totem**: +10-30% Schaden für Verbündete
  - **Schutz-Totem**: +5-20% Schadensreduzierung
  - **Mana-Totem**: Mana-Regeneration für Gruppe
- Maximal 3 aktive Totems gleichzeitig (T6: 5 Totems)

### Heilungs-System
- Heilungskraft skaliert mit Ausrüstung (+3% bis +225%)
- Selbstheilung: 100% Effizienz
- Gruppenheilung: 80% Effizienz
- Überheilung wird zu Schild (max 20% Max-HP)
- Kritische Heilung möglich (20% Chance, 1.5x Heilung)

### Regeneration
- Passive HP-Regeneration außerhalb des Kampfes: 5x normal
- Im Kampf: Skaliert mit Ausrüstung (1-165 HP/s möglich)
- Regeneration stapelt mit Totems
- Bei unter 30% HP: +50% Regeneration

### Lebensraub
- Sicheln haben hohen Lebensraub (5-50%)
- Lebensraub heilt auch Verbündete im Totem-Radius (30% Effizienz)
- Lebensraub durchdringt Schilde nicht

### Naturmagie-Effekte
- **Verrottung**: Reduziert Rüstung des Gegners um 20-50%
- **Dornen**: Reflektiert 10-40% des erhaltenen Schadens
- **Wurzeln**: Verlangsamt Gegner um 30-70%
- **Gift**: Schaden über Zeit, verhindert Heilung

### Gruppen-Buffs
Schamanen verstärken die gesamte Gruppe:
- **T4+**: +10% Schaden und +5% Schadensreduzierung für Gruppe
- **T5+**: +18% Schaden und +10% Schadensreduzierung für Gruppe
- **T6+**: +30% Schaden und +18% Schadensreduzierung für Gruppe
- Buffs wirken im Totem-Radius

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `SCHAMANE_[TYP]_T[1-6]`
- Heilungskraft ist der wichtigste Stat
- HP-Regeneration skaliert stark über alle Tiers
- Totem-Effekte werden durch Ausrüstung verstärkt
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Schamane ist essentiell für Gruppen-Content (Dungeons, Raids)
- Solo-Fähigkeit durch hohe Überlebensfähigkeit und Selbstheilung
