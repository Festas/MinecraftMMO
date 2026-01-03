# ⚔️ KRIEGER (Warrior)

## Übersicht
Der **Krieger** ist die ultimative Tank- und Nahkampfklasse. Mit schwerer Plattenrüstung und mächtigen Waffen stürmt er in den Kampf und hält massiven Schaden aus. Der Krieger nutzt ein Wut-System, das ihm erlaubt, mit jedem Treffer stärker zu werden.

**Spielstil**: Aggressiver Nahkampf-Tank mit hoher Überlebensfähigkeit und AoE-Schaden

## Waffentypen
- **Schwerter (SWORD)**: Ausgewogene Einhandwaffen mit mittlerer Geschwindigkeit
- **Zweihänder (GREATSWORD)**: Langsame, aber verheerende Zweihandwaffen
- **Äxte (AXE)**: Einhandäxte mit Blutungseffekten
- **Großäxte (GREATAXE)**: Massive Zweihandäxte mit kritischem Bonus
- **Hämmer (HAMMER)**: Einhandhämmer mit Betäubungseffekten
- **Kriegshämmer (WARHAMMER)**: Zweihandhämmer mit Rüstungsdurchdringung

## Rüstungstyp
**Schwere Plattenrüstung** - Bietet die höchste Schadensreduzierung im Spiel. Kriegerrüstung fokussiert sich auf:
- Hohe Rüstungswerte
- Maximale HP-Boni
- Schadensreduzierung
- Stärkeverstärkung
- Lebensraub-Effekte

## Dateien
- `waffen.yml` - Alle Waffen (Schwerter, Zweihänder, Äxte, Großäxte, Hämmer, Kriegshämmer)
- `ruestung.yml` - Alle Rüstungsteile (Helm, Brustplatte, Beinschutz, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit Tank- und Schadensboni
- `offhand.yml` - Schilde mit Blockchance und Schutzeffekten

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

### Schwerter (SWORD)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_SCHWERT_T1 | Rostige Klinge | Gewöhnlich | 1 | 5-7 | 1.4 | - |
| KRIEGER_SCHWERT_T2 | Eisenklinge des Lernenden | Ungewöhnlich | 12 | 8-11 | 1.4 | +5% Krit |
| KRIEGER_SCHWERT_T3 | Stahlschwert der Stärke | Selten | 22 | 12-16 | 1.4 | +8% Krit, +10 Stärke |
| KRIEGER_SCHWERT_T4 | Runenklinge des Meisters | Episch | 38 | 18-24 | 1.4 | +12% Krit, +20 Stärke, 5% Lebensraub |
| KRIEGER_SCHWERT_T5 | Legendäre Drachentöter-Klinge | Legendär | 55 | 28-36 | 1.4 | +15% Krit, +35 Stärke, 8% Lebensraub, Ability: Wirbelsturm |
| KRIEGER_SCHWERT_T6 | Mythische Weltenbrecher | Mythisch | 78 | 42-54 | 1.4 | +20% Krit, +50 Stärke, 12% Lebensraub, Ability: Todesstoß |

### Zweihänder (GREATSWORD)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_ZWEIH_T1 | Große Eisenklinge | Gewöhnlich | 1 | 8-12 | 0.9 | - |
| KRIEGER_ZWEIH_T2 | Schwere Stahlklinge | Ungewöhnlich | 12 | 14-19 | 0.9 | +10% Schaden gegen Gruppen |
| KRIEGER_ZWEIH_T3 | Flammenklinge | Selten | 22 | 21-28 | 0.9 | +15% AoE, Feuerschaden |
| KRIEGER_ZWEIH_T4 | Runenzweihänder der Macht | Episch | 38 | 32-42 | 0.9 | +20% AoE, +15 Stärke, Betäubung |
| KRIEGER_ZWEIH_T5 | Legendärer Titanenschwert | Legendär | 55 | 48-62 | 0.9 | +25% AoE, +30 Stärke, Ability: Erdspalter |
| KRIEGER_ZWEIH_T6 | Mythischer Göttertöter | Mythisch | 78 | 72-92 | 0.9 | +30% AoE, +45 Stärke, Ability: Weltenbeben |

### Äxte (AXE)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_AXT_T1 | Stumpfe Holzfälleraxt | Gewöhnlich | 1 | 6-8 | 1.2 | - |
| KRIEGER_AXT_T2 | Scharfe Kampfaxt | Ungewöhnlich | 12 | 9-13 | 1.2 | Blutung I (2s) |
| KRIEGER_AXT_T3 | Berserkeraxt | Selten | 22 | 14-19 | 1.2 | Blutung II (4s), +8 Stärke |
| KRIEGER_AXT_T4 | Runengeätzte Kriegsaxt | Episch | 38 | 21-28 | 1.2 | Blutung III (6s), +15 Stärke, 10% Rüstungsdurchdringung |
| KRIEGER_AXT_T5 | Legendäre Schädelaxt | Legendär | 55 | 32-42 | 1.2 | Blutung IV (8s), +25 Stärke, 15% Rüstungsdurchdringung, Ability: Halsschlag |
| KRIEGER_AXT_T6 | Mythischer Seelenspalter | Mythisch | 78 | 48-62 | 1.2 | Blutung V (10s), +40 Stärke, 25% Rüstungsdurchdringung, Ability: Hinrichtung |

### Großäxte (GREATAXE)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_GROSSAXT_T1 | Schwere Holzaxt | Gewöhnlich | 1 | 9-13 | 0.8 | - |
| KRIEGER_GROSSAXT_T2 | Eiserne Schlachtaxt | Ungewöhnlich | 12 | 15-21 | 0.8 | +10% Krit-Schaden |
| KRIEGER_GROSSAXT_T3 | Orcische Kriegsaxt | Selten | 22 | 23-31 | 0.8 | +15% Krit-Schaden, Blutung II |
| KRIEGER_GROSSAXT_T4 | Dämonenschlächter | Episch | 38 | 35-46 | 0.8 | +25% Krit-Schaden, Blutung III, +12 Stärke |
| KRIEGER_GROSSAXT_T5 | Legendärer Riesen-Spalter | Legendär | 55 | 52-68 | 0.8 | +35% Krit-Schaden, Blutung IV, +22 Stärke, Ability: Wilder Hieb |
| KRIEGER_GROSSAXT_T6 | Mythische Weltenaxt | Mythisch | 78 | 78-102 | 0.8 | +50% Krit-Schaden, Blutung V, +35 Stärke, Ability: Zerstörung |

### Hämmer (HAMMER)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_HAMMER_T1 | Steinerner Schmiedehammer | Gewöhnlich | 1 | 5-9 | 1.1 | - |
| KRIEGER_HAMMER_T2 | Stählerner Kriegshammer | Ungewöhnlich | 12 | 9-14 | 1.1 | 10% Betäubungschance (1s) |
| KRIEGER_HAMMER_T3 | Donner-Hammer | Selten | 22 | 13-20 | 1.1 | 15% Betäubung (1.5s), +10 Stärke |
| KRIEGER_HAMMER_T4 | Runenhammer der Erschütterung | Episch | 38 | 20-29 | 1.1 | 20% Betäubung (2s), +18 Stärke, Rüstungszerstörung |
| KRIEGER_HAMMER_T5 | Legendärer Thorhammer | Legendär | 55 | 30-43 | 1.1 | 25% Betäubung (2.5s), +30 Stärke, Ability: Donnerschlag |
| KRIEGER_HAMMER_T6 | Mythischer Weltenhammer | Mythisch | 78 | 45-65 | 1.1 | 35% Betäubung (3s), +45 Stärke, Ability: Titanenschlag |

### Kriegshämmer (WARHAMMER)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| KRIEGER_KRIEGSHAMMER_T1 | Großer Kriegshammer | Gewöhnlich | 1 | 10-14 | 0.7 | - |
| KRIEGER_KRIEGSHAMMER_T2 | Zermalmer | Ungewöhnlich | 12 | 16-23 | 0.7 | 20% Rüstungsdurchdringung |
| KRIEGER_KRIEGSHAMMER_T3 | Schädelbrecher | Selten | 22 | 24-34 | 0.7 | 30% Rüstungsdurchdringung, Betäubung I |
| KRIEGER_KRIEGSHAMMER_T4 | Runen-Kriegshammer | Episch | 38 | 37-51 | 0.7 | 40% Rüstungsdurchdringung, Betäubung II, +15 Stärke |
| KRIEGER_KRIEGSHAMMER_T5 | Legendärer Erdbrecher | Legendär | 55 | 55-76 | 0.7 | 50% Rüstungsdurchdringung, Betäubung III, +28 Stärke, Ability: Bodenstoß |
| KRIEGER_KRIEGSHAMMER_T6 | Mythischer Götterhammer | Mythisch | 78 | 83-114 | 0.7 | 70% Rüstungsdurchdringung, Betäubung IV, +42 Stärke, Ability: Apokalypse |

### Rüstung - Helm (HELMET)

| ID | Name | Tier | Level | Rüstung | HP | Besonderheit |
|----|------|------|-------|---------|-----|--------------|
| KRIEGER_HELM_T1 | Rostiger Eisenhelm | Gewöhnlich | 1 | 3 | +20 | - |
| KRIEGER_HELM_T2 | Stahlhelm des Lernenden | Ungewöhnlich | 12 | 6 | +40 | +5 Stärke |
| KRIEGER_HELM_T3 | Verstärkter Kampfhelm | Selten | 22 | 9 | +65 | +10 Stärke, +2% Schadensreduzierung |
| KRIEGER_HELM_T4 | Runenhelm des Meisters | Episch | 38 | 14 | +100 | +18 Stärke, +5% Schadensreduzierung |
| KRIEGER_HELM_T5 | Legendärer Drachenkopf-Helm | Legendär | 55 | 21 | +150 | +30 Stärke, +8% Schadensreduzierung, +5% Lebensraub |
| KRIEGER_HELM_T6 | Mythischer Titanenhelm | Mythisch | 78 | 32 | +230 | +45 Stärke, +12% Schadensreduzierung, +8% Lebensraub |

### Rüstung - Brustplatte (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | HP | Besonderheit |
|----|------|------|-------|---------|-----|--------------|
| KRIEGER_BRUST_T1 | Rostige Eisenplatte | Gewöhnlich | 1 | 5 | +35 | - |
| KRIEGER_BRUST_T2 | Stahlplatte des Lernenden | Ungewöhnlich | 12 | 10 | +70 | +8 Stärke |
| KRIEGER_BRUST_T3 | Verstärkte Kampfplatte | Selten | 22 | 15 | +110 | +15 Stärke, +3% Schadensreduzierung |
| KRIEGER_BRUST_T4 | Runenbrustplatte des Meisters | Episch | 38 | 23 | +170 | +28 Stärke, +7% Schadensreduzierung |
| KRIEGER_BRUST_T5 | Legendäre Drachenschuppen-Platte | Legendär | 55 | 35 | +260 | +45 Stärke, +12% Schadensreduzierung, +8% Lebensraub |
| KRIEGER_BRUST_T6 | Mythische Titanen-Platte | Mythisch | 78 | 53 | +400 | +70 Stärke, +18% Schadensreduzierung, +12% Lebensraub |

### Rüstung - Beinschutz (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | HP | Besonderheit |
|----|------|------|-------|---------|-----|--------------|
| KRIEGER_BEINE_T1 | Rostige Eisenbeinlinge | Gewöhnlich | 1 | 4 | +30 | - |
| KRIEGER_BEINE_T2 | Stahlbeinlinge des Lernenden | Ungewöhnlich | 12 | 8 | +60 | +7 Stärke |
| KRIEGER_BEINE_T3 | Verstärkte Kampfbeinlinge | Selten | 22 | 12 | +95 | +13 Stärke, +2% Schadensreduzierung |
| KRIEGER_BEINE_T4 | Runenbeinschutz des Meisters | Episch | 38 | 19 | +145 | +23 Stärke, +6% Schadensreduzierung |
| KRIEGER_BEINE_T5 | Legendäre Drachenbeinlinge | Legendär | 55 | 29 | +220 | +38 Stärke, +10% Schadensreduzierung, +6% Lebensraub |
| KRIEGER_BEINE_T6 | Mythische Titanenbeinlinge | Mythisch | 78 | 44 | +340 | +60 Stärke, +15% Schadensreduzierung, +10% Lebensraub |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | HP | Besonderheit |
|----|------|------|-------|---------|-----|--------------|
| KRIEGER_STIEFEL_T1 | Rostige Eisenstiefel | Gewöhnlich | 1 | 2 | +15 | - |
| KRIEGER_STIEFEL_T2 | Stahlstiefel des Lernenden | Ungewöhnlich | 12 | 4 | +30 | +4 Stärke |
| KRIEGER_STIEFEL_T3 | Verstärkte Kampfstiefel | Selten | 22 | 6 | +50 | +8 Stärke, +2% Bewegungsgeschwindigkeit |
| KRIEGER_STIEFEL_T4 | Runenstiefel des Meisters | Episch | 38 | 9 | +80 | +14 Stärke, +4% Bewegungsgeschwindigkeit |
| KRIEGER_STIEFEL_T5 | Legendäre Drachenstiefel | Legendär | 55 | 14 | +120 | +24 Stärke, +6% Bewegungsgeschwindigkeit, +4% Lebensraub |
| KRIEGER_STIEFEL_T6 | Mythische Titanenstiefel | Mythisch | 78 | 21 | +185 | +38 Stärke, +10% Bewegungsgeschwindigkeit, +6% Lebensraub |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| KRIEGER_RING_T1 | Einfacher Eisenring | Gewöhnlich | 1 | +3 Stärke |
| KRIEGER_RING_T2 | Ring des Kämpfers | Ungewöhnlich | 12 | +7 Stärke, +15 HP |
| KRIEGER_RING_T3 | Ring der Macht | Selten | 22 | +12 Stärke, +30 HP, +2% Krit |
| KRIEGER_RING_T4 | Runenring der Stärke | Episch | 38 | +20 Stärke, +55 HP, +5% Krit, +3% Lebensraub |
| KRIEGER_RING_T5 | Legendärer Titanenring | Legendär | 55 | +32 Stärke, +90 HP, +8% Krit, +6% Lebensraub, +5% Schadensreduzierung |
| KRIEGER_RING_T6 | Mythischer Ring der Unsterblichkeit | Mythisch | 78 | +50 Stärke, +140 HP, +12% Krit, +10% Lebensraub, +10% Schadensreduzierung |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| KRIEGER_AMULETT_T1 | Einfaches Kraftamulett | Gewöhnlich | 1 | +5 HP |
| KRIEGER_AMULETT_T2 | Amulett der Ausdauer | Ungewöhnlich | 12 | +25 HP, +5 Stärke |
| KRIEGER_AMULETT_T3 | Amulett des Kriegers | Selten | 22 | +50 HP, +10 Stärke, +5% Angriffsgeschwindigkeit |
| KRIEGER_AMULETT_T4 | Runen-Amulett der Macht | Episch | 38 | +90 HP, +18 Stärke, +8% Angriffsgeschwindigkeit, +3% Lebensraub |
| KRIEGER_AMULETT_T5 | Legendäres Drachenamulett | Legendär | 55 | +145 HP, +28 Stärke, +12% Angriffsgeschwindigkeit, +7% Lebensraub, Immunity: Feuer |
| KRIEGER_AMULETT_T6 | Mythisches Götteramulett | Mythisch | 78 | +225 HP, +45 Stärke, +18% Angriffsgeschwindigkeit, +12% Lebensraub, Immunity: Feuer, Gift |

### Offhand - Schilde (SHIELD)

| ID | Name | Tier | Level | Blockwert | Besonderheit |
|----|------|------|-------|-----------|--------------|
| KRIEGER_SCHILD_T1 | Holzschild | Gewöhnlich | 1 | 15% | +10 HP |
| KRIEGER_SCHILD_T2 | Eisenschild des Lernenden | Ungewöhnlich | 12 | 20% | +25 HP, +3 Rüstung |
| KRIEGER_SCHILD_T3 | Stahlschild der Abwehr | Selten | 22 | 25% | +45 HP, +6 Rüstung, +5 Stärke |
| KRIEGER_SCHILD_T4 | Runenschild des Meisters | Episch | 38 | 30% | +75 HP, +10 Rüstung, +10 Stärke, Reflection: 5% |
| KRIEGER_SCHILD_T5 | Legendärer Drachen-Schild | Legendär | 55 | 35% | +120 HP, +16 Rüstung, +18 Stärke, Reflection: 10%, +5% Schadensreduzierung |
| KRIEGER_SCHILD_T6 | Mythischer Titan-Schild | Mythisch | 78 | 45% | +190 HP, +25 Rüstung, +28 Stärke, Reflection: 20%, +10% Schadensreduzierung |

## Set-Boni

### T4 Set - Runen-Krieger (4 Teile)
- **2 Teile**: +15 Stärke, +50 HP
- **3 Teile**: +25 Stärke, +100 HP, +5% Lebensraub
- **4 Teile**: +40 Stärke, +200 HP, +10% Lebensraub, Ability: Wut-Entfesselung (erhöht Schaden um 30% für 10s)

### T5 Set - Legendärer Drachenkrieger (4 Teile)
- **2 Teile**: +30 Stärke, +100 HP, +5% Schadensreduzierung
- **3 Teile**: +50 Stärke, +200 HP, +10% Schadensreduzierung, +8% Lebensraub
- **4 Teile**: +80 Stärke, +350 HP, +15% Schadensreduzierung, +15% Lebensraub, Ability: Drachenwut (massiver AoE-Schaden + Betäubung)

### T6 Set - Mythischer Titanen-Krieger (4 Teile)
- **2 Teile**: +50 Stärke, +200 HP, +10% Schadensreduzierung
- **3 Teile**: +80 Stärke, +350 HP, +18% Schadensreduzierung, +15% Lebensraub
- **4 Teile**: +130 Stärke, +600 HP, +25% Schadensreduzierung, +25% Lebensraub, Ability: Unsterblicher Titan (Unverwundbar für 5s, +100% Schaden)

## Besondere Mechaniken

### Wut-System
- Jeder Treffer erhöht Wut um 1-3 Punkte
- Bei 100 Wut: Aktiviere Berserker-Modus
- Berserker-Modus: +50% Schaden, +30% Angriffsgeschwindigkeit, 10s Dauer

### Betäubungseffekte
- Chance: Abhängig von Waffe (10-35%)
- Dauer: 1-3 Sekunden
- Verhindert Bewegung und Angriffe des Gegners

### AoE-Fähigkeiten
- Zweihänder und Kriegshämmer haben erhöhten AoE-Radius
- Wirbelsturm: Trifft alle Gegner in 5-Block-Radius
- Erdspalter: Linienförmiger AoE-Schaden

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `KRIEGER_[TYP]_T[1-6]`
- Waffenskalierung: T1→T2 (+40%), T2→T3 (+50%), T3→T4 (+60%), T4→T5 (+70%), T5→T6 (+80%)
- Rüstungsskalierung: T1→T2 (+100%), dann jeweils +50% pro Tier
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
