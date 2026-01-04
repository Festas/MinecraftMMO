# 🛡️ PALADIN (Paladin)

## Übersicht
Der **Paladin** ist ein heiliger Krieger, der die Rolle von Tank und Heiler vereint. Mit schwerer Plattenrüstung und heiligen Waffen beschützt er seine Verbündeten und bestraft Feinde mit heiligem Schaden. Die Klasse ist perfekt für Spieler, die sowohl tanken als auch heilen wollen.

**Spielstil**: Hybrid Tank/Heiler mit Auren-System. Fokus auf Schutz, Heilung und heiligen Schaden gegen Untote und dämonische Gegner.

## Waffentypen
- **Streitkolben (MACE)**: Einhandwaffen mit Betäubungseffekten und heiligem Schaden
- **Morgensterne (MORNING_STAR)**: Schwere Einhandwaffen mit AoE-Heiligschaden
- **Heilige Schwerter (HOLY_SWORD)**: Ein- und Zweihandschwerter mit Heilungseffekten

## Rüstungstyp
**Schwere Plattenrüstung mit Heilig-Boni** - Höchste Rüstung kombiniert mit Heilungskraft:
- Sehr hohe Rüstungswerte
- Heilungskraft-Verstärkung
- Schadensreduzierung
- Auren-Verstärkung
- Heiliger Schadensbonus
- Resistenzen gegen Untote/Dämonen

## Dateien
- `waffen.yml` - Alle Waffen (Streitkolben, Morgensterne, Heilige Schwerter)
- `ruestung.yml` - Alle Rüstungsteile (Helm, Brustplatte, Beinschutz, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit Heilig- und Heilungsboni
- `offhand.yml` - Heilige Schilde und Reliquien

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

### Streitkolben (MACE)

| ID | Name | Tier | Level | Schaden | Heilig-Schaden | Besonderheit |
|----|------|------|-------|---------|----------------|--------------|
| PALADIN_STREITKOLBEN_T1 | Einfacher Streitkolben | Gewöhnlich | 1 | 5-8 | +2 | - |
| PALADIN_STREITKOLBEN_T2 | Geweihter Streitkolben | Ungewöhnlich | 12 | 9-13 | +5 | +5% Heilungskraft, 10% Betäubung (1s) |
| PALADIN_STREITKOLBEN_T3 | Heiliger Streitkolben | Selten | 22 | 14-20 | +10 | +12% Heilungskraft, 15% Betäubung (1.5s), +20% vs Untote |
| PALADIN_STREITKOLBEN_T4 | Runen-Streitkolben | Episch | 38 | 21-30 | +18 | +22% Heilungskraft, 20% Betäubung (2s), +40% vs Untote, Heilige Aura I |
| PALADIN_STREITKOLBEN_T5 | Legendärer Lichtbringer | Legendär | 55 | 32-46 | +30 | +38% Heilungskraft, 28% Betäubung (2.5s), +70% vs Untote, Ability: Heiliger Hammer |
| PALADIN_STREITKOLBEN_T6 | Mythischer Götterhammer | Mythisch | 78 | 49-70 | +50 | +65% Heilungskraft, 40% Betäubung (3s), +120% vs Untote, Ability: Göttliche Vergeltung |

### Morgensterne (MORNING_STAR)

| ID | Name | Tier | Level | Schaden | Heilig-Schaden | Besonderheit |
|----|------|------|-------|---------|----------------|--------------|
| PALADIN_MORGENSTERN_T1 | Einfacher Morgenstern | Gewöhnlich | 1 | 6-9 | +3 | AoE-Schaden (klein) |
| PALADIN_MORGENSTERN_T2 | Geweihter Morgenstern | Ungewöhnlich | 12 | 10-15 | +7 | +8% Heilungskraft, AoE-Schaden +15% |
| PALADIN_MORGENSTERN_T3 | Heiliger Morgenstern | Selten | 22 | 16-23 | +13 | +15% Heilungskraft, AoE-Schaden +30%, Heiliges Feuer |
| PALADIN_MORGENSTERN_T4 | Runen-Morgenstern | Episch | 38 | 24-35 | +22 | +28% Heilungskraft, AoE-Schaden +50%, Heiliges Feuer II, Blendung |
| PALADIN_MORGENSTERN_T5 | Legendärer Lichtbann | Legendär | 55 | 37-53 | +38 | +48% Heilungskraft, AoE-Schaden +80%, Ability: Heilige Nova |
| PALADIN_MORGENSTERN_T6 | Mythischer Weltenbann | Mythisch | 78 | 56-81 | +65 | +82% Heilungskraft, AoE-Schaden +130%, Ability: Göttliche Apokalypse |

### Heilige Schwerter (HOLY_SWORD)

| ID | Name | Tier | Level | Schaden | Heilig-Schaden | Besonderheit |
|----|------|------|-------|---------|----------------|--------------|
| PALADIN_HEILSCHWERT_T1 | Einfaches Breitschwert | Gewöhnlich | 1 | 5-7 | +2 | +3% Heilungskraft |
| PALADIN_HEILSCHWERT_T2 | Geweihte Klinge | Ungewöhnlich | 12 | 8-12 | +5 | +10% Heilungskraft, Lebensraub 3% |
| PALADIN_HEILSCHWERT_T3 | Lichtklinge | Selten | 22 | 13-19 | +11 | +18% Heilungskraft, Lebensraub 6%, Selbstheilung bei Treffer |
| PALADIN_HEILSCHWERT_T4 | Runen-Lichtklinge | Episch | 38 | 20-29 | +19 | +32% Heilungskraft, Lebensraub 10%, Gruppenheilung bei Treffer, +30% vs Untote |
| PALADIN_HEILSCHWERT_T5 | Legendäres Lichtbringer-Schwert | Legendär | 55 | 30-44 | +32 | +55% Heilungskraft, Lebensraub 16%, Ability: Heiliger Schlag (Schaden + AoE-Heilung) |
| PALADIN_HEILSCHWERT_T6 | Mythisches Aschenklinge | Mythisch | 78 | 46-67 | +55 | +92% Heilungskraft, Lebensraub 25%, Ability: Göttlicher Zorn (Massive Heilung + Schaden) |

### Rüstung - Helm (HELMET)

| ID | Name | Tier | Level | Rüstung | Heilungskraft | Besonderheit |
|----|------|------|-------|---------|---------------|--------------|
| PALADIN_HELM_T1 | Einfacher Eisenhelm | Gewöhnlich | 1 | 3 | +3% | +15 HP |
| PALADIN_HELM_T2 | Geweihter Helm | Ungewöhnlich | 12 | 6 | +8% | +35 HP, +5 Heilig-Schaden |
| PALADIN_HELM_T3 | Lichthelm | Selten | 22 | 9 | +15% | +60 HP, +10 Heilig-Schaden, +3% Schadensreduzierung |
| PALADIN_HELM_T4 | Runen-Lichthelm | Episch | 38 | 14 | +26% | +100 HP, +18 Heilig-Schaden, +7% Schadensreduzierung, Aura +10% |
| PALADIN_HELM_T5 | Legendärer Kreuzritter-Helm | Legendär | 55 | 21 | +44% | +160 HP, +32 Heilig-Schaden, +12% Schadensreduzierung, Aura +20% |
| PALADIN_HELM_T6 | Mythischer Götterhelm | Mythisch | 78 | 32 | +72% | +260 HP, +55 Heilig-Schaden, +20% Schadensreduzierung, Aura +35% |

### Rüstung - Brustplatte (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Heilungskraft | Besonderheit |
|----|------|------|-------|---------|---------------|--------------|
| PALADIN_BRUST_T1 | Einfache Eisenplatte | Gewöhnlich | 1 | 5 | +5% | +25 HP |
| PALADIN_BRUST_T2 | Geweihte Platte | Ungewöhnlich | 12 | 10 | +12% | +60 HP, +8 Heilig-Schaden |
| PALADIN_BRUST_T3 | Lichtplatte | Selten | 22 | 15 | +22% | +105 HP, +16 Heilig-Schaden, +5% Schadensreduzierung |
| PALADIN_BRUST_T4 | Runen-Lichtplatte | Episch | 38 | 23 | +38% | +175 HP, +28 Heilig-Schaden, +10% Schadensreduzierung, Aura +15% |
| PALADIN_BRUST_T5 | Legendäre Kreuzritter-Platte | Legendär | 55 | 35 | +65% | +280 HP, +48 Heilig-Schaden, +18% Schadensreduzierung, Aura +30% |
| PALADIN_BRUST_T6 | Mythische Götterplatte | Mythisch | 78 | 53 | +110% | +450 HP, +82 Heilig-Schaden, +28% Schadensreduzierung, Aura +50% |

### Rüstung - Beinschutz (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Heilungskraft | Besonderheit |
|----|------|------|-------|---------|---------------|--------------|
| PALADIN_BEINE_T1 | Einfache Eisenbeine | Gewöhnlich | 1 | 4 | +4% | +20 HP |
| PALADIN_BEINE_T2 | Geweihte Beine | Ungewöhnlich | 12 | 8 | +10% | +50 HP, +6 Heilig-Schaden |
| PALADIN_BEINE_T3 | Lichtbeine | Selten | 22 | 12 | +18% | +90 HP, +13 Heilig-Schaden, +4% Schadensreduzierung |
| PALADIN_BEINE_T4 | Runen-Lichtbeine | Episch | 38 | 19 | +32% | +150 HP, +23 Heilig-Schaden, +8% Schadensreduzierung, Aura +12% |
| PALADIN_BEINE_T5 | Legendäre Kreuzritter-Beine | Legendär | 55 | 29 | +55% | +240 HP, +40 Heilig-Schaden, +15% Schadensreduzierung, Aura +25% |
| PALADIN_BEINE_T6 | Mythische Götterbeine | Mythisch | 78 | 44 | +92% | +390 HP, +68 Heilig-Schaden, +24% Schadensreduzierung, Aura +42% |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | Heilungskraft | Besonderheit |
|----|------|------|-------|---------|---------------|--------------|
| PALADIN_STIEFEL_T1 | Einfache Eisenstiefel | Gewöhnlich | 1 | 2 | +2% | +12 HP |
| PALADIN_STIEFEL_T2 | Geweihte Stiefel | Ungewöhnlich | 12 | 4 | +6% | +28 HP, +4 Heilig-Schaden, +3% Bewegungsgeschw. |
| PALADIN_STIEFEL_T3 | Lichtstiefel | Selten | 22 | 6 | +12% | +50 HP, +8 Heilig-Schaden, +6% Bewegungsgeschw. |
| PALADIN_STIEFEL_T4 | Runen-Lichtstiefel | Episch | 38 | 9 | +20% | +85 HP, +15 Heilig-Schaden, +10% Bewegungsgeschw., Aura +8% |
| PALADIN_STIEFEL_T5 | Legendäre Kreuzritter-Stiefel | Legendär | 55 | 14 | +35% | +135 HP, +26 Heilig-Schaden, +15% Bewegungsgeschw., Aura +18% |
| PALADIN_STIEFEL_T6 | Mythische Götterstiefel | Mythisch | 78 | 21 | +58% | +220 HP, +45 Heilig-Schaden, +22% Bewegungsgeschw., Aura +30% |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| PALADIN_RING_T1 | Einfacher Heiligring | Gewöhnlich | 1 | +3% Heilungskraft, +10 HP |
| PALADIN_RING_T2 | Ring des Lichts | Ungewöhnlich | 12 | +8% Heilungskraft, +25 HP, +3 Heilig-Schaden |
| PALADIN_RING_T3 | Ring der Gerechtigkeit | Selten | 22 | +15% Heilungskraft, +45 HP, +8 Heilig-Schaden, +3% Schadensreduzierung |
| PALADIN_RING_T4 | Runenring des Lichts | Episch | 38 | +26% Heilungskraft, +80 HP, +15 Heilig-Schaden, +6% Schadensreduzierung |
| PALADIN_RING_T5 | Legendärer Kreuzritter-Ring | Legendär | 55 | +44% Heilungskraft, +135 HP, +28 Heilig-Schaden, +10% Schadensreduzierung, +10% Aura |
| PALADIN_RING_T6 | Mythischer Götterring | Mythisch | 78 | +72% Heilungskraft, +220 HP, +48 Heilig-Schaden, +18% Schadensreduzierung, +20% Aura |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| PALADIN_AMULETT_T1 | Einfaches Lichtamulett | Gewöhnlich | 1 | +5% Heilungskraft, +8 HP |
| PALADIN_AMULETT_T2 | Amulett der Reinheit | Ungewöhnlich | 12 | +12% Heilungskraft, +22 HP, +5 Heilig-Schaden |
| PALADIN_AMULETT_T3 | Amulett des Kreuzritters | Selten | 22 | +22% Heilungskraft, +42 HP, +12 Heilig-Schaden, +5% Aura |
| PALADIN_AMULETT_T4 | Runen-Amulett des Lichts | Episch | 38 | +38% Heilungskraft, +75 HP, +22 Heilig-Schaden, +12% Aura, Untoten-Immunität |
| PALADIN_AMULETT_T5 | Legendäres Kreuzritter-Amulett | Legendär | 55 | +65% Heilungskraft, +130 HP, +38 Heilig-Schaden, +22% Aura, Untoten & Dämonen-Immunität |
| PALADIN_AMULETT_T6 | Mythisches Götteramulett | Mythisch | 78 | +110% Heilungskraft, +215 HP, +65 Heilig-Schaden, +38% Aura, Alle Dunkle-Magie-Immunitäten |

### Offhand - Heilige Schilde (HOLY_SHIELD)

| ID | Name | Tier | Level | Blockwert | Besonderheit |
|----|------|------|-------|-----------|--------------|
| PALADIN_SCHILD_T1 | Einfacher Eisenschild | Gewöhnlich | 1 | 18% | +15 HP, +2% Heilungskraft |
| PALADIN_SCHILD_T2 | Geweihter Schild | Ungewöhnlich | 12 | 24% | +35 HP, +6% Heilungskraft, +3 Rüstung |
| PALADIN_SCHILD_T3 | Lichtschild | Selten | 22 | 30% | +60 HP, +12% Heilungskraft, +6 Rüstung, Reflection 5% |
| PALADIN_SCHILD_T4 | Runen-Lichtschild | Episch | 38 | 36% | +105 HP, +22% Heilungskraft, +10 Rüstung, Reflection 10%, Heilige Aura |
| PALADIN_SCHILD_T5 | Legendärer Erlöserschild | Legendär | 55 | 44% | +175 HP, +38% Heilungskraft, +16 Rüstung, Reflection 18%, Starke Aura |
| PALADIN_SCHILD_T6 | Mythischer Götterschild | Mythisch | 78 | 55% | +285 HP, +65% Heilungskraft, +26 Rüstung, Reflection 30%, Göttliche Aura |

### Offhand - Reliquien (RELIC)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| PALADIN_RELIQUIE_T1 | Einfaches Heiliges Symbol | Gewöhnlich | 1 | +5% Heilungskraft, +2 Heilig-Schaden |
| PALADIN_RELIQUIE_T2 | Gesegnete Reliquie | Ungewöhnlich | 12 | +12% Heilungskraft, +6 Heilig-Schaden, +5% Aura |
| PALADIN_RELIQUIE_T3 | Lichtreliquie | Selten | 22 | +22% Heilungskraft, +12 Heilig-Schaden, +12% Aura, +3 HP Reg |
| PALADIN_RELIQUIE_T4 | Runen-Reliquie | Episch | 38 | +38% Heilungskraft, +22 Heilig-Schaden, +22% Aura, +8 HP Reg, Segen-Effekt |
| PALADIN_RELIQUIE_T5 | Legendäre Göttliche Reliquie | Legendär | 55 | +65% Heilungskraft, +38 Heilig-Schaden, +38% Aura, +16 HP Reg, Starker Segen |
| PALADIN_RELIQUIE_T6 | Mythische Ur-Reliquie | Mythisch | 78 | +110% Heilungskraft, +65 Heilig-Schaden, +65% Aura, +28 HP Reg, Göttlicher Segen |

## Set-Boni

### T4 Set - Runen-Paladin (4 Teile)
- **2 Teile**: +30% Heilungskraft, +100 HP, +20 Heilig-Schaden
- **3 Teile**: +55% Heilungskraft, +180 HP, +38 Heilig-Schaden, +10% Schadensreduzierung, Aura +20%
- **4 Teile**: +90% Heilungskraft, +320 HP, +65 Heilig-Schaden, +18% Schadensreduzierung, Aura +40%, Ability: Göttlicher Schutz

### T5 Set - Legendärer Kreuzritter (4 Teile)
- **2 Teile**: +60% Heilungskraft, +200 HP, +40 Heilig-Schaden, +12% Schadensreduzierung, Aura +30%
- **3 Teile**: +105% Heilungskraft, +360 HP, +72 Heilig-Schaden, +22% Schadensreduzierung, Aura +55%, Untoten-Immunität
- **4 Teile**: +175% Heilungskraft, +630 HP, +125 Heilig-Schaden, +35% Schadensreduzierung, Aura +90%, Ability: Göttliches Eingreifen (Unverwundbar 3s + Gruppen-Heilung)

### T6 Set - Mythischer Göttlicher Paladin (4 Teile)
- **2 Teile**: +100% Heilungskraft, +400 HP, +70 Heilig-Schaden, +20% Schadensreduzierung, Aura +50%
- **3 Teile**: +175% Heilungskraft, +720 HP, +125 Heilig-Schaden, +35% Schadensreduzierung, Aura +90%, Alle Immunitäten
- **4 Teile**: +300% Heilungskraft, +1250 HP, +215 Heilig-Schaden, +50% Schadensreduzierung, Aura +150%, Ability: Göttliche Apotheose (Gottform: Unverwundbar + Massive AoE-Heilung + AoE-Schaden)

## Besondere Mechaniken

### Auren-System
Der Paladin kann verschiedene Auren aktivieren (nur 1 gleichzeitig):
- **Widerstands-Aura**: +10-35% Schadensreduzierung für Gruppe (Radius: 15-40 Blöcke)
- **Vergeltungs-Aura**: Reflektiert 10-40% Schaden auf Angreifer
- **Heilungs-Aura**: +5-30 HP/s für Gruppe
- **Heilige Aura**: +15-60% Schaden gegen Untote/Dämonen für Gruppe
- Auren werden durch Ausrüstung verstärkt (+8% bis +150%)

### Heiliger Schaden
- Bonus-Schaden gegen Untote: +20% bis +120%
- Bonus-Schaden gegen Dämonen: +15% bis +100%
- Heiliger Schaden durchdringt Dunkle-Magie-Schilde
- Kritischer Heilig-Schaden: 3.0x statt 2.0x

### Tank-Mechaniken
- Höchste Rüstungswerte nach Krieger
- Bis zu 55% Blockchance mit Schild
- Schadensreduzierung: bis zu 50%
- Reflection: bis zu 30% des erhaltenen Schadens
- Bedrohungs-Generation: +50% (zieht Aggro besser)

### Heilungs-Mechaniken
- Kann sich selbst und andere heilen
- Selbstheilung: 100% Effizienz
- Gruppenheilung: 90% Effizienz (höher als Schamane bei Einzelzielen)
- Überheilung wird zu Absorptions-Schild
- Lebensraub: 3-25% bei Heiligen Schwertern

### Schutz-Abilities
- **Göttlicher Schutz (T4)**: 5s Unverwundbarkeit, 3min Cooldown
- **Göttliches Eingreifen (T5)**: Rettet Verbündeten vor Tod, 5min Cooldown
- **Göttliche Apotheose (T6)**: Gottform 10s, alle Stats +200%, 10min Cooldown

### Segen-System
Mit Reliquien kann der Paladin Segen verteilen:
- **Segen der Stärke**: +20-50 Schaden für 10min
- **Segen des Schutzes**: +10-30% Schadensreduzierung für 10min
- **Segen der Weisheit**: +30-100 Mana-Regeneration für 10min
- Bis zu 3 verschiedene Segen gleichzeitig aktiv

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `PALADIN_[TYP]_T[1-6]`
- Paladin ist der vielseitigste Hybrid: Tank + Heiler + Schaden
- Heiliger Schaden ist eigener Schadenstyp mit Boni gegen Untote/Dämonen
- Auren-System erfordert aktive Wahl zwischen verschiedenen Effekten
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Perfekt für Solo-Play durch Selbstheilung und hohe Verteidigung
- Essentiell für Gruppen als Off-Tank oder Tank/Heal-Hybrid
