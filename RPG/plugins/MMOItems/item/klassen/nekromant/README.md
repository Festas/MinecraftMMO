# 💀 NEKROMANT (Necromancer)

## Übersicht
Der **Nekromant** ist der Meister der dunklen Künste und des Todes. Mit der Macht, Untote zu beschwören und Seelen zu manipulieren, kontrolliert er das Schlachtfeld durch seine Diener. Die Klasse fokussiert sich auf Beschwörungen, Flüche und Lebensraub.

**Spielstil**: Beschwörungs-basierter Caster mit Pets und Fluch-Mechaniken. Fokus auf Seelenernte, Lebensraub und Kontrolle durch Untote.

## Waffentypen
- **Knochenstäbe (BONE_STAFF)**: Beschwörungsstäbe mit Untoten-Verstärkung
- **Seelensicheln (SOUL_SCYTHE)**: Zweihandsicheln mit Seelenernte-Mechanik
- **Fluchstäbe (CURSE_STAFF)**: Stäbe spezialisiert auf Debuffs und DoTs

## Rüstungstyp
**Dunkle Roben** - Leichte Stoffrüstung mit dunklen Kräften:
- Minimale Rüstung
- Beschwörungs-Verstärkung
- Lebensraub-Boni
- Seelen-Kapazität
- Fluch-Effektivität
- Untoten-Kontrolle

## Dateien
- `waffen.yml` - Alle Waffen (Knochenstäbe, Seelensicheln, Fluchstäbe)
- `ruestung.yml` - Alle Rüstungsteile (Kapuze, Robe, Hose, Schuhe)
- `schmuck.yml` - Ringe und Amulette mit Beschwörungs- und Lebensraub-Boni
- `offhand.yml` - Seelengefäße und Totenschädel

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

### Knochenstäbe (BONE_STAFF)

| ID | Name | Tier | Level | Schaden | Beschwörung | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_KNOCHENSTAB_T1 | Einfacher Knochenstab | Gewöhnlich | 1 | 5-8 | +1 Skeleton | - |
| NEKROMANT_KNOCHENSTAB_T2 | Verfluchter Knochenstab | Ungewöhnlich | 12 | 9-13 | +2 Skeletons | +10% Pet-Schaden, 5% Lebensraub |
| NEKROMANT_KNOCHENSTAB_T3 | Nekromantischer Stab | Selten | 22 | 14-20 | +3 Skeletons | +22% Pet-Schaden, 10% Lebensraub, Seelenernte I |
| NEKROMANT_KNOCHENSTAB_T4 | Runen-Totenstab | Episch | 38 | 21-30 | +4 Skeletons + Zombie | +38% Pet-Schaden, 18% Lebensraub, Seelenernte II, Fluch I |
| NEKROMANT_KNOCHENSTAB_T5 | Legendärer Lichkönig-Stab | Legendär | 55 | 32-46 | +5 Skeletons + Lich | +65% Pet-Schaden, 30% Lebensraub, Ability: Armee der Toten |
| NEKROMANT_KNOCHENSTAB_T6 | Mythischer Todeskönig-Stab | Mythisch | 78 | 49-70 | +7 Skeletons + Todesknight | +110% Pet-Schaden, 50% Lebensraub, Ability: Apokalypse der Untoten |

### Seelensicheln (SOUL_SCYTHE)

| ID | Name | Tier | Level | Schaden | Seelenernte | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_SEELENSICHEL_T1 | Alte Sense | Gewöhnlich | 1 | 7-11 | +1 Seele/Kill | 8% Lebensraub |
| NEKROMANT_SEELENSICHEL_T2 | Dunkle Sense | Ungewöhnlich | 12 | 12-18 | +2 Seelen/Kill | 15% Lebensraub, Blutung II |
| NEKROMANT_SEELENSICHEL_T3 | Seelenschnitter | Selten | 22 | 19-27 | +3 Seelen/Kill | 24% Lebensraub, Blutung III, Seelenexplosion |
| NEKROMANT_SEELENSICHEL_T4 | Runen-Seelensense | Episch | 38 | 29-41 | +5 Seelen/Kill | 38% Lebensraub, Blutung IV, Seelen-DoT, +30% vs Lebende |
| NEKROMANT_SEELENSICHEL_T5 | Legendäre Todessense | Legendär | 55 | 44-62 | +8 Seelen/Kill | 60% Lebensraub, Blutung V, Ability: Seelensturm |
| NEKROMANT_SEELENSICHEL_T6 | Mythische Weltenschnitter | Mythisch | 78 | 67-95 | +13 Seelen/Kill | 95% Lebensraub, Blutung VI, Ability: Seelenverschlingung |

### Fluchstäbe (CURSE_STAFF)

| ID | Name | Tier | Level | Schaden | Fluch-Stärke | Besonderheit |
|----|------|------|-------|---------|--------------|--------------|
| NEKROMANT_FLUCHSTAB_T1 | Einfacher Dunkler Stab | Gewöhnlich | 1 | 4-7 | +5% | Schwächung I (3s) |
| NEKROMANT_FLUCHSTAB_T2 | Verfluchter Stab | Ungewöhnlich | 12 | 7-11 | +12% | Schwächung II (5s), Langsamkeit I |
| NEKROMANT_FLUCHSTAB_T3 | Stab der Verdammnis | Selten | 22 | 11-17 | +22% | Schwächung III (8s), Langsamkeit II, Blindheit |
| NEKROMANT_FLUCHSTAB_T4 | Runen-Fluchstab | Episch | 38 | 17-25 | +38% | Schwächung IV (12s), Langsamkeit III, Blindheit, Verwundbarkeit |
| NEKROMANT_FLUCHSTAB_T5 | Legendärer Verderbnis-Stab | Legendär | 55 | 26-38 | +65% | Schwächung V (18s), Alle Flüche, Ability: Massenfluch |
| NEKROMANT_FLUCHSTAB_T6 | Mythischer Apokalypse-Stab | Mythisch | 78 | 40-58 | +110% | Schwächung VI (25s), Alle Flüche +, Ability: Ewige Verdammnis |

### Rüstung - Kapuze (HELMET)

| ID | Name | Tier | Level | Rüstung | Beschwörung | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_KAPUZE_T1 | Alte Dunkle Kapuze | Gewöhnlich | 1 | 1 | +5% Pet-Schaden | - |
| NEKROMANT_KAPUZE_T2 | Schattenkapuze | Ungewöhnlich | 12 | 2 | +12% Pet-Schaden | +5% Lebensraub |
| NEKROMANT_KAPUZE_T3 | Nekromanten-Kapuze | Selten | 22 | 3 | +22% Pet-Schaden | +12% Lebensraub, +1 Max Pets |
| NEKROMANT_KAPUZE_T4 | Runen-Totenkapuze | Episch | 38 | 5 | +38% Pet-Schaden | +22% Lebensraub, +2 Max Pets, +10 Max Seelen |
| NEKROMANT_KAPUZE_T5 | Legendäre Lichkönig-Kapuze | Legendär | 55 | 8 | +65% Pet-Schaden | +38% Lebensraub, +3 Max Pets, +20 Max Seelen |
| NEKROMANT_KAPUZE_T6 | Mythische Todeskönig-Kapuze | Mythisch | 78 | 12 | +110% Pet-Schaden | +65% Lebensraub, +5 Max Pets, +35 Max Seelen |

### Rüstung - Robe (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Beschwörung | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_ROBE_T1 | Alte Dunkle Robe | Gewöhnlich | 1 | 2 | +8% Pet-Schaden | - |
| NEKROMANT_ROBE_T2 | Schattenrobe | Ungewöhnlich | 12 | 4 | +18% Pet-Schaden | +8% Lebensraub |
| NEKROMANT_ROBE_T3 | Nekromanten-Robe | Selten | 22 | 6 | +32% Pet-Schaden | +18% Lebensraub, +5% Fluch-Stärke |
| NEKROMANT_ROBE_T4 | Runen-Totenrobe | Episch | 38 | 9 | +55% Pet-Schaden | +32% Lebensraub, +15% Fluch-Stärke, +15 Max Seelen |
| NEKROMANT_ROBE_T5 | Legendäre Lichkönig-Robe | Legendär | 55 | 14 | +95% Pet-Schaden | +55% Lebensraub, +28% Fluch-Stärke, +30 Max Seelen |
| NEKROMANT_ROBE_T6 | Mythische Todeskönig-Robe | Mythisch | 78 | 21 | +160% Pet-Schaden | +95% Lebensraub, +50% Fluch-Stärke, +50 Max Seelen |

### Rüstung - Hose (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Beschwörung | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_HOSE_T1 | Alte Dunkle Hose | Gewöhnlich | 1 | 1 | +6% Pet-Schaden | - |
| NEKROMANT_HOSE_T2 | Schattenhose | Ungewöhnlich | 12 | 3 | +15% Pet-Schaden | +6% Lebensraub |
| NEKROMANT_HOSE_T3 | Nekromanten-Hose | Selten | 22 | 5 | +28% Pet-Schaden | +15% Lebensraub, +3% Fluch-Stärke |
| NEKROMANT_HOSE_T4 | Runen-Totenhose | Episch | 38 | 7 | +48% Pet-Schaden | +28% Lebensraub, +12% Fluch-Stärke, +12 Max Seelen |
| NEKROMANT_HOSE_T5 | Legendäre Lichkönig-Hose | Legendär | 55 | 11 | +82% Pet-Schaden | +48% Lebensraub, +22% Fluch-Stärke, +25 Max Seelen |
| NEKROMANT_HOSE_T6 | Mythische Todeskönig-Hose | Mythisch | 78 | 17 | +140% Pet-Schaden | +82% Lebensraub, +42% Fluch-Stärke, +42 Max Seelen |

### Rüstung - Schuhe (BOOTS)

| ID | Name | Tier | Level | Rüstung | Beschwörung | Besonderheit |
|----|------|------|-------|---------|-------------|--------------|
| NEKROMANT_SCHUHE_T1 | Alte Dunkle Schuhe | Gewöhnlich | 1 | 1 | +4% Pet-Schaden | +2% Bewegungsgeschw. |
| NEKROMANT_SCHUHE_T2 | Schattenschuhe | Ungewöhnlich | 12 | 2 | +10% Pet-Schaden | +5% Bewegungsgeschw., +4% Lebensraub |
| NEKROMANT_SCHUHE_T3 | Nekromanten-Schuhe | Selten | 22 | 3 | +18% Pet-Schaden | +10% Bewegungsgeschw., +10% Lebensraub |
| NEKROMANT_SCHUHE_T4 | Runen-Totenschuhe | Episch | 38 | 4 | +32% Pet-Schaden | +15% Bewegungsgeschw., +18% Lebensraub, +8 Max Seelen |
| NEKROMANT_SCHUHE_T5 | Legendäre Lichkönig-Schuhe | Legendär | 55 | 6 | +55% Pet-Schaden | +22% Bewegungsgeschw., +32% Lebensraub, +18 Max Seelen |
| NEKROMANT_SCHUHE_T6 | Mythische Todeskönig-Schuhe | Mythisch | 78 | 9 | +92% Pet-Schaden | +32% Bewegungsgeschw., +55% Lebensraub, +30 Max Seelen |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| NEKROMANT_RING_T1 | Einfacher Totenring | Gewöhnlich | 1 | +5% Pet-Schaden, +3% Lebensraub |
| NEKROMANT_RING_T2 | Ring der Untoten | Ungewöhnlich | 12 | +12% Pet-Schaden, +8% Lebensraub, +3 Max Seelen |
| NEKROMANT_RING_T3 | Ring der Seelen | Selten | 22 | +22% Pet-Schaden, +15% Lebensraub, +8 Max Seelen, +5% Fluch |
| NEKROMANT_RING_T4 | Runenring des Todes | Episch | 38 | +38% Pet-Schaden, +26% Lebensraub, +15 Max Seelen, +12% Fluch |
| NEKROMANT_RING_T5 | Legendärer Lichring | Legendär | 55 | +65% Pet-Schaden, +44% Lebensraub, +25 Max Seelen, +22% Fluch, +1 Max Pet |
| NEKROMANT_RING_T6 | Mythischer Todesring | Mythisch | 78 | +110% Pet-Schaden, +72% Lebensraub, +42 Max Seelen, +38% Fluch, +2 Max Pets |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| NEKROMANT_AMULETT_T1 | Einfaches Totenamulett | Gewöhnlich | 1 | +8% Pet-Schaden, +5% Lebensraub |
| NEKROMANT_AMULETT_T2 | Amulett der Verdammnis | Ungewöhnlich | 12 | +18% Pet-Schaden, +12% Lebensraub, +5 Max Seelen |
| NEKROMANT_AMULETT_T3 | Amulett des Nekromanten | Selten | 22 | +32% Pet-Schaden, +22% Lebensraub, +12 Max Seelen, +8% Fluch |
| NEKROMANT_AMULETT_T4 | Runen-Amulett des Todes | Episch | 38 | +55% Pet-Schaden, +38% Lebensraub, +22 Max Seelen, +18% Fluch, Untoten-Immunität |
| NEKROMANT_AMULETT_T5 | Legendäres Lich-Amulett | Legendär | 55 | +95% Pet-Schaden, +65% Lebensraub, +38 Max Seelen, +32% Fluch, Untoten & Gift-Immunität |
| NEKROMANT_AMULETT_T6 | Mythisches Todesamulett | Mythisch | 78 | +160% Pet-Schaden, +110% Lebensraub, +65 Max Seelen, +55% Fluch, Alle Dunkle-Immunitäten |

### Offhand - Seelengefäße (SOUL_VESSEL)

| ID | Name | Tier | Level | Max Seelen | Besonderheit |
|----|------|------|-------|------------|--------------|
| NEKROMANT_GEFAESS_T1 | Einfaches Seelengefäß | Gewöhnlich | 1 | +5 Seelen | +5% Pet-Schaden |
| NEKROMANT_GEFAESS_T2 | Verzaubertes Gefäß | Ungewöhnlich | 12 | +12 Seelen | +12% Pet-Schaden, +5% Lebensraub |
| NEKROMANT_GEFAESS_T3 | Seelen-Urne | Selten | 22 | +22 Seelen | +22% Pet-Schaden, +12% Lebensraub, Seelen-Regeneration |
| NEKROMANT_GEFAESS_T4 | Runen-Seelengefäß | Episch | 38 | +38 Seelen | +38% Pet-Schaden, +22% Lebensraub, Schnelle Seelen-Regeneration |
| NEKROMANT_GEFAESS_T5 | Legendäre Seelenurne | Legendär | 55 | +65 Seelen | +65% Pet-Schaden, +38% Lebensraub, Seelen-Explosion |
| NEKROMANT_GEFAESS_T6 | Mythisches Seelen-Phylakterium | Mythisch | 78 | +110 Seelen | +110% Pet-Schaden, +65% Lebensraub, Seelen-Apokalypse |

### Offhand - Totenschädel (SKULL)

| ID | Name | Tier | Level | Fluch-Bonus | Besonderheit |
|----|------|------|-------|-------------|--------------|
| NEKROMANT_SCHAEDEL_T1 | Alter Totenschädel | Gewöhnlich | 1 | +5% | +3% Pet-Schaden |
| NEKROMANT_SCHAEDEL_T2 | Verfluchter Schädel | Ungewöhnlich | 12 | +12% | +8% Pet-Schaden, +5% Lebensraub |
| NEKROMANT_SCHAEDEL_T3 | Nekromanten-Schädel | Selten | 22 | +22% | +15% Pet-Schaden, +12% Lebensraub, Fluch-Aura |
| NEKROMANT_SCHAEDEL_T4 | Runen-Totenschädel | Episch | 38 | +38% | +28% Pet-Schaden, +22% Lebensraub, Starke Fluch-Aura |
| NEKROMANT_SCHAEDEL_T5 | Legendärer Lich-Schädel | Legendär | 55 | +65% | +48% Pet-Schaden, +38% Lebensraub, Massenfluch-Aura |
| NEKROMANT_SCHAEDEL_T6 | Mythischer Götter-Schädel | Mythisch | 78 | +110% | +82% Pet-Schaden, +65% Lebensraub, Apokalyptische Fluch-Aura |

## Set-Boni

### T4 Set - Runen-Nekromant (4 Teile)
- **2 Teile**: +40% Pet-Schaden, +25% Lebensraub, +20 Max Seelen
- **3 Teile**: +70% Pet-Schaden, +45% Lebensraub, +35 Max Seelen, +2 Max Pets
- **4 Teile**: +120% Pet-Schaden, +75% Lebensraub, +60 Max Seelen, +3 Max Pets, Ability: Armee der Verdammten

### T5 Set - Legendärer Lichkönig (4 Teile)
- **2 Teile**: +80% Pet-Schaden, +50% Lebensraub, +40 Max Seelen, +3 Max Pets
- **3 Teile**: +140% Pet-Schaden, +85% Lebensraub, +70 Max Seelen, +5 Max Pets, Seelen-Immunität
- **4 Teile**: +240% Pet-Schaden, +145% Lebensraub, +120 Max Seelen, +7 Max Pets, Ability: Lichform (Unverwundbar + Massive Pet-Beschwörung)

### T6 Set - Mythischer Todeskönig (4 Teile)
- **2 Teile**: +140% Pet-Schaden, +90% Lebensraub, +70 Max Seelen, +5 Max Pets
- **3 Teile**: +240% Pet-Schaden, +155% Lebensraub, +120 Max Seelen, +8 Max Pets, Alle Immunitäten
- **4 Teile**: +420% Pet-Schaden, +270% Lebensraub, +210 Max Seelen, +12 Max Pets, Ability: Apokalypse der Untoten (20 Elite-Untote + Unverwundbarkeit)

## Besondere Mechaniken

### Beschwörungs-System
Nekromanten können verschiedene Untote beschwören:
- **Skeletons (T1+)**: Basis-Nahkämpfer, 1-7 gleichzeitig
- **Zombies (T4+)**: Tanky-Nahkämpfer, langsam aber stark
- **Lich (T5+)**: Magischer Fernkämpfer, sehr stark
- **Todesknight (T6+)**: Elite-Nahkämpfer mit AoE-Schaden
- Pet-Schaden skaliert mit Ausrüstung (+4% bis +420%)
- Pets erben 30% der Nekromanten-Stats

### Seelen-System
- Seelen werden durch Töten von Gegnern gesammelt
- 1-13 Seelen pro Kill (abhängig von Waffe)
- Max Seelen: 0-210 (abhängig von Ausrüstung)
- Seelen können ausgegeben werden für:
  - **Seelenschild**: 10 Seelen = Schild für 20% Max HP
  - **Seelen-Explosion**: 20 Seelen = AoE-Schaden
  - **Seelen-Heilung**: 15 Seelen = 50% HP Heilung
  - **Elite-Pet**: 50 Seelen = Beschwöre stärkeren Untoten

### Lebensraub
- Höchster Lebensraub aller Klassen (3% bis 270%)
- Funktioniert mit eigenem Schaden UND Pet-Schaden (30% Effizienz)
- Über 100% Lebensraub heilt mehr als Schaden verursacht
- Bei vollem HP: Überschuss wird zu temporärem Schild

### Fluch-System
Verschiedene Flüche können auf Gegner gelegt werden:
- **Schwächung**: -10% bis -60% Schaden des Gegners
- **Langsamkeit**: -20% bis -80% Bewegungsgeschwindigkeit
- **Blindheit**: Reduzierte Sichtweite
- **Verwundbarkeit**: Gegner nimmt +15% bis +50% mehr Schaden
- **Verrottung**: -30% Heilungseffektivität
- Flüche stapeln und dauern 3-25 Sekunden

### Pet-Kontrolle
- Pets folgen automatisch und greifen an
- Befehle: Angriff, Verteidigung, Folgen
- Pets haben eigene HP-Bars
- Bei Tod: Auto-Respawn nach 30s
- Stärkere Pets bei mehr Max-Seelen

### Dark-Magic-Synergien
- Schaden gegen Lebende: +30% (T4+)
- Resistenz gegen Heiligen Schaden: +50%
- Immun gegen Untoten-Flüche
- Seelenenergie verstärkt alle Fähigkeiten

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `NEKROMANT_[TYP]_T[1-6]`
- Pet-Schaden ist Hauptschadens-Quelle (nicht direkter Schaden)
- Lebensraub kann über 100% gehen
- Seelen-System benötigt eigene Ressourcen-Anzeige
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Perfekt für Spieler, die Pet-Klassen mögen
- Sehr stark im Solo-Play durch Pets als Tanks
- Unterscheidet sich stark von anderen Caster-Klassen
