# 🔥 BERSERKER (Berserker)

## Übersicht
Der **Berserker** ist die ultimative Schadens-Klasse. Mit massiven Zweihandwaffen und minimaler Rüstung stürzt er sich rücksichtslos in den Kampf. Je niedriger seine HP, desto höher sein Schaden. Die Klasse ist perfekt für Spieler, die maximalen Schaden über alles andere stellen.

**Spielstil**: Glas-Kanone im Nahkampf. Höchster Schaden im Spiel, aber sehr fragil. Fokus auf Wut, Blutung und Berserker-Modus bei niedriger HP.

## Waffentypen
- **Kriegsäxte (WAR_AXE)**: Massive Zweihandäxte mit höchstem Schaden
- **Keulen (CLUB)**: Schwere Zweihandkeulen mit Betäubung und Flächenschaden
- **Barbarenwaffen (BARBARIAN_WEAPON)**: Rohe, primitive Waffen mit extremen Schadensspitzen

## Rüstungstyp
**Leichte Pelz-/Lederrüstung** - Minimale Rüstung für maximale Offensive:
- Sehr geringe Rüstungswerte
- Massive Schadensboni
- Wut-Generierung
- Kritischer Schaden
- Blutungs-Verstärkung
- Bewegungsgeschwindigkeit

## Dateien
- `waffen.yml` - Alle Waffen (Kriegsäxte, Keulen, Barbarenwaffen)
- `ruestung.yml` - Alle Rüstungsteile (Helm, Brustplatte, Beinschutz, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit reinen Schadensboni
- `offhand.yml` - Keine (Berserker nutzt nur Zweihandwaffen)

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

### Kriegsäxte (WAR_AXE)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_KRIEGSAXT_T1 | Grobe Kriegsaxt | Gewöhnlich | 1 | 10-15 | 0.7 | Blutung I (3s) |
| BERSERKER_KRIEGSAXT_T2 | Barbarische Kriegsaxt | Ungewöhnlich | 12 | 17-26 | 0.7 | Blutung II (5s), +15% Krit-Schaden |
| BERSERKER_KRIEGSAXT_T3 | Wilde Kriegsaxt | Selten | 22 | 27-40 | 0.7 | Blutung III (7s), +30% Krit-Schaden, +10% Schaden bei <50% HP |
| BERSERKER_KRIEGSAXT_T4 | Runen-Kriegsaxt der Wut | Episch | 38 | 42-62 | 0.7 | Blutung IV (10s), +55% Krit-Schaden, +25% Schaden bei <50% HP, Wut-Generierung +50% |
| BERSERKER_KRIEGSAXT_T5 | Legendäre Weltenspalter-Axt | Legendär | 55 | 64-94 | 0.7 | Blutung V (15s), +90% Krit-Schaden, +50% Schaden bei <50% HP, Ability: Wilder Raserei-Hieb |
| BERSERKER_KRIEGSAXT_T6 | Mythische Chaos-Axt | Mythisch | 78 | 98-144 | 0.7 | Blutung VI (20s), +150% Krit-Schaden, +100% Schaden bei <50% HP, Ability: Totale Vernichtung |

### Keulen (CLUB)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_KEULE_T1 | Große Holzkeule | Gewöhnlich | 1 | 9-14 | 0.8 | 15% Betäubung (1s) |
| BERSERKER_KEULE_T2 | Verstärkte Keule | Ungewöhnlich | 12 | 15-23 | 0.8 | 20% Betäubung (1.5s), +10% AoE-Schaden |
| BERSERKER_KEULE_T3 | Brutale Keule | Selten | 22 | 24-36 | 0.8 | 25% Betäubung (2s), +20% AoE-Schaden, Erschütterung |
| BERSERKER_KEULE_T4 | Runen-Keule der Zerstörung | Episch | 38 | 37-55 | 0.8 | 32% Betäubung (2.5s), +35% AoE-Schaden, Erschütterung II, Rüstungsbrechend |
| BERSERKER_KEULE_T5 | Legendärer Titanenbrecher | Legendär | 55 | 57-84 | 0.8 | 42% Betäubung (3s), +55% AoE-Schaden, Ability: Erdzerstörer |
| BERSERKER_KEULE_T6 | Mythischer Weltenzerstörer | Mythisch | 78 | 87-128 | 0.8 | 55% Betäubung (4s), +85% AoE-Schaden, Ability: Apokalyptische Erschütterung |

### Barbarenwaffen (BARBARIAN_WEAPON)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_BARBAR_T1 | Primitive Waffe | Gewöhnlich | 1 | 8-16 | 0.9 | Hohe Schadensschwankung |
| BERSERKER_BARBAR_T2 | Wilde Barbarenwaffe | Ungewöhnlich | 12 | 14-28 | 0.9 | +20% Krit-Chance, Hohe Schwankung |
| BERSERKER_BARBAR_T3 | Rasende Barbarenwaffe | Selten | 22 | 22-44 | 0.9 | +30% Krit-Chance, +25% Krit-Schaden, Extreme Schwankung |
| BERSERKER_BARBAR_T4 | Runen-Barbarenwaffe | Episch | 38 | 34-68 | 0.9 | +40% Krit-Chance, +50% Krit-Schaden, +20% Schaden bei <50% HP, Wut +100% |
| BERSERKER_BARBAR_T5 | Legendäre Chaoswaffe | Legendär | 55 | 52-104 | 0.9 | +52% Krit-Chance, +85% Krit-Schaden, +40% Schaden bei <50% HP, Ability: Chaos-Schlag |
| BERSERKER_BARBAR_T6 | Mythische Ur-Waffe | Mythisch | 78 | 80-160 | 0.9 | +68% Krit-Chance, +140% Krit-Schaden, +80% Schaden bei <50% HP, Ability: Ur-Zorn |

### Rüstung - Helm (HELMET)

| ID | Name | Tier | Level | Rüstung | Schaden | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_HELM_T1 | Einfacher Pelzhelm | Gewöhnlich | 1 | 1 | +3% | +10 HP |
| BERSERKER_HELM_T2 | Wilder Helm | Ungewöhnlich | 12 | 2 | +8% | +20 HP, +5% Krit-Chance |
| BERSERKER_HELM_T3 | Kriegshelm | Selten | 22 | 3 | +15% | +35 HP, +10% Krit-Chance, +8% Krit-Schaden |
| BERSERKER_HELM_T4 | Runen-Wuthelm | Episch | 38 | 4 | +26% | +60 HP, +18% Krit-Chance, +20% Krit-Schaden, +5% Schaden bei <50% HP |
| BERSERKER_HELM_T5 | Legendärer Raserei-Helm | Legendär | 55 | 6 | +44% | +95 HP, +28% Krit-Chance, +40% Krit-Schaden, +15% Schaden bei <50% HP |
| BERSERKER_HELM_T6 | Mythischer Chaos-Helm | Mythisch | 78 | 9 | +72% | +155 HP, +42% Krit-Chance, +70% Krit-Schaden, +30% Schaden bei <50% HP |

### Rüstung - Brustplatte (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Schaden | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_BRUST_T1 | Einfache Pelzjacke | Gewöhnlich | 1 | 2 | +5% | +20 HP |
| BERSERKER_BRUST_T2 | Wilde Jacke | Ungewöhnlich | 12 | 3 | +12% | +40 HP, +8% Krit-Chance |
| BERSERKER_BRUST_T3 | Kriegsplatte | Selten | 22 | 5 | +22% | +70 HP, +15% Krit-Chance, +12% Krit-Schaden |
| BERSERKER_BRUST_T4 | Runen-Wutplatte | Episch | 38 | 8 | +38% | +120 HP, +25% Krit-Chance, +30% Krit-Schaden, +10% Schaden bei <50% HP |
| BERSERKER_BRUST_T5 | Legendäre Raserei-Platte | Legendär | 55 | 12 | +65% | +190 HP, +38% Krit-Chance, +60% Krit-Schaden, +22% Schaden bei <50% HP |
| BERSERKER_BRUST_T6 | Mythische Chaos-Platte | Mythisch | 78 | 18 | +110% | +310 HP, +55% Krit-Chance, +105% Krit-Schaden, +45% Schaden bei <50% HP |

### Rüstung - Beinschutz (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Schaden | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_BEINE_T1 | Einfache Pelzhose | Gewöhnlich | 1 | 1 | +4% | +15 HP |
| BERSERKER_BEINE_T2 | Wilde Hose | Ungewöhnlich | 12 | 2 | +10% | +35 HP, +6% Krit-Chance |
| BERSERKER_BEINE_T3 | Kriegshose | Selten | 22 | 4 | +18% | +60 HP, +12% Krit-Chance, +10% Krit-Schaden |
| BERSERKER_BEINE_T4 | Runen-Wuthose | Episch | 38 | 6 | +32% | +105 HP, +22% Krit-Chance, +25% Krit-Schaden, +8% Schaden bei <50% HP |
| BERSERKER_BEINE_T5 | Legendäre Raserei-Hose | Legendär | 55 | 9 | +55% | +170 HP, +34% Krit-Chance, +50% Krit-Schaden, +18% Schaden bei <50% HP |
| BERSERKER_BEINE_T6 | Mythische Chaos-Hose | Mythisch | 78 | 14 | +92% | +275 HP, +50% Krit-Chance, +88% Krit-Schaden, +38% Schaden bei <50% HP |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | Schaden | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| BERSERKER_STIEFEL_T1 | Einfache Pelzstiefel | Gewöhnlich | 1 | 1 | +2% | +8 HP, +3% Bewegungsgeschw. |
| BERSERKER_STIEFEL_T2 | Wilde Stiefel | Ungewöhnlich | 12 | 2 | +6% | +18 HP, +6% Bewegungsgeschw., +4% Krit-Chance |
| BERSERKER_STIEFEL_T3 | Kriegsstiefel | Selten | 22 | 3 | +12% | +32 HP, +10% Bewegungsgeschw., +8% Krit-Chance |
| BERSERKER_STIEFEL_T4 | Runen-Wutstiefel | Episch | 38 | 4 | +20% | +55 HP, +15% Bewegungsgeschw., +15% Krit-Chance, +15% Krit-Schaden |
| BERSERKER_STIEFEL_T5 | Legendäre Raserei-Stiefel | Legendär | 55 | 6 | +35% | +90 HP, +22% Bewegungsgeschw., +24% Krit-Chance, +35% Krit-Schaden |
| BERSERKER_STIEFEL_T6 | Mythische Chaos-Stiefel | Mythisch | 78 | 9 | +58% | +145 HP, +32% Bewegungsgeschw., +36% Krit-Chance, +60% Krit-Schaden |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| BERSERKER_RING_T1 | Einfacher Wutring | Gewöhnlich | 1 | +5% Schaden, +3% Krit-Chance |
| BERSERKER_RING_T2 | Ring der Wildheit | Ungewöhnlich | 12 | +12% Schaden, +8% Krit-Chance, +5% Krit-Schaden |
| BERSERKER_RING_T3 | Ring der Raserei | Selten | 22 | +22% Schaden, +15% Krit-Chance, +15% Krit-Schaden |
| BERSERKER_RING_T4 | Runenring der Wut | Episch | 38 | +38% Schaden, +24% Krit-Chance, +32% Krit-Schaden, +5% Schaden bei <50% HP |
| BERSERKER_RING_T5 | Legendärer Raserei-Ring | Legendär | 55 | +65% Schaden, +38% Krit-Chance, +60% Krit-Schaden, +15% Schaden bei <50% HP |
| BERSERKER_RING_T6 | Mythischer Chaos-Ring | Mythisch | 78 | +110% Schaden, +58% Krit-Chance, +105% Krit-Schaden, +30% Schaden bei <50% HP |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| BERSERKER_AMULETT_T1 | Einfaches Wut-Amulett | Gewöhnlich | 1 | +8% Schaden, +5% Krit-Chance |
| BERSERKER_AMULETT_T2 | Amulett der Stärke | Ungewöhnlich | 12 | +18% Schaden, +12% Krit-Chance, +10% Krit-Schaden |
| BERSERKER_AMULETT_T3 | Amulett des Kriegers | Selten | 22 | +32% Schaden, +22% Krit-Chance, +22% Krit-Schaden, +5% Bewegungsgeschw. |
| BERSERKER_AMULETT_T4 | Runen-Amulett der Wut | Episch | 38 | +55% Schaden, +35% Krit-Chance, +42% Krit-Schaden, +10% Bewegungsgeschw., +8% Schaden bei <50% HP |
| BERSERKER_AMULETT_T5 | Legendäres Raserei-Amulett | Legendär | 55 | +95% Schaden, +55% Krit-Chance, +75% Krit-Schaden, +18% Bewegungsgeschw., +22% Schaden bei <50% HP |
| BERSERKER_AMULETT_T6 | Mythisches Chaos-Amulett | Mythisch | 78 | +160% Schaden, +85% Krit-Chance, +135% Krit-Schaden, +28% Bewegungsgeschw., +45% Schaden bei <50% HP |

## Set-Boni

### T4 Set - Runen-Berserker (4 Teile)
- **2 Teile**: +35% Schaden, +20% Krit-Chance, +30% Krit-Schaden
- **3 Teile**: +65% Schaden, +35% Krit-Chance, +60% Krit-Schaden, +15% Schaden bei <50% HP
- **4 Teile**: +110% Schaden, +55% Krit-Chance, +105% Krit-Schaden, +30% Schaden bei <50% HP, Ability: Wilde Raserei

### T5 Set - Legendärer Chaosberserker (4 Teile)
- **2 Teile**: +75% Schaden, +40% Krit-Chance, +70% Krit-Schaden, +20% Schaden bei <50% HP
- **3 Teile**: +135% Schaden, +65% Krit-Chance, +130% Krit-Schaden, +40% Schaden bei <50% HP, Immun gegen Kontrolle
- **4 Teile**: +235% Schaden, +105% Krit-Chance, +230% Krit-Schaden, +75% Schaden bei <50% HP, Ability: Unsterbliche Raserei (Bei 1 HP: +300% Schaden für 10s)

### T6 Set - Mythischer Ur-Berserker (4 Teile)
- **2 Teile**: +140% Schaden, +70% Krit-Chance, +130% Krit-Schaden, +40% Schaden bei <50% HP
- **3 Teile**: +245% Schaden, +115% Krit-Chance, +235% Krit-Schaden, +80% Schaden bei <50% HP, Alle Immunitäten
- **4 Teile**: +430% Schaden, +185% Krit-Chance, +420% Krit-Schaden, +150% Schaden bei <50% HP, Ability: Apokalyptische Wut (Bei <10% HP: +1000% Schaden, Unverwundbar 5s)

## Besondere Mechaniken

### Wut-System
Berserker nutzen Wut als Ressource:
- Wut wird durch Schaden und Treffer aufgebaut (1-5 Punkte pro Treffer)
- Maximum: 100 Wut
- Bei 100 Wut: Automatische Aktivierung von Berserker-Modus
- **Berserker-Modus**: 10s Dauer, +100% Schaden, +50% Angriffsgeschwindigkeit, +30% Bewegungsgeschwindigkeit
- Wut zerfällt langsam außerhalb des Kampfes

### Schaden bei niedriger HP
Das Kernkonzept des Berserkers:
- **100-76% HP**: Normaler Schaden
- **75-51% HP**: +10-20% Schaden
- **50-26% HP**: +30-80% Schaden (Je nach Ausrüstung)
- **25-1% HP**: +60-150% Schaden
- **<10% HP (T6 Set)**: +1000% Schaden mit Unverwundbarkeit

### Kritische Treffer
- Höchste Krit-Chance nach Assassine (bis zu 185%)
- Kritische Treffer sind garantiert über 100% Krit-Chance
- Krit-Multiplikator: 2.5x Basis + Ausrüstungs-Boni
- Mit T6 Ausrüstung: bis zu 7.0x Krit-Multiplikator möglich

### Blutungs-Mechanik
- Alle Waffen verursachen starke Blutungen
- Blutung stapelt bis zu 10x
- Jeder Stack: 3-8% Waffenschaden pro Sekunde
- Blutung durchdringt Rüstung komplett
- Bei 10 Stacks: Gegner verliert 30-80% HP pro Sekunde

### Glas-Kanone-Konzept
- Niedrigste Rüstung aller Klassen (1-18 pro Rüstungsteil)
- Keine Schilde oder Offhand-Items
- Keine Selbstheilung (außer sehr geringer Lebensraub)
- **ABER**: Höchster DPS im gesamten Spiel
- Strategie: "Die beste Verteidigung ist Offense - töte sie, bevor sie dich töten"

### Extreme Schadensschwankung
Besonders bei Barbarenwaffen:
- Schadensspanne: 1:2 (z.B. 80-160)
- Kann extrem niedrig oder extrem hoch treffen
- Mit Krit: Potenzial für One-Shot-Kills
- Hohe Varianz = hohes Risiko, hohe Belohnung

### AoE-Zerstörung
- Keulen haben +85% AoE-Schaden (T6)
- Erschütterungs-Effekt: Betrifft alle Gegner in 5-Block-Radius
- Perfekt für Gruppen-Bekämpfung
- Kombination mit Set-Boni für maximale AoE-Power

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `BERSERKER_[TYP]_T[1-6]`
- Berserker nutzt KEINE Offhand-Items (nur Zweihandwaffen)
- Schaden-Skalierung ist höher als bei allen anderen Klassen
- "Schaden bei niedriger HP" ist zentrale Mechanik
- Sehr hohes Risiko, sehr hohe Belohnung
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Perfekt für erfahrene Spieler, die Herausforderungen suchen
- Nicht empfohlen für Anfänger (sehr schwer zu spielen)
- Im Endgame: Höchster Schaden, aber auch höchste Sterblichkeitsrate
