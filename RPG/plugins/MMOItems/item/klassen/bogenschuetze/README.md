# 🏹 BOGENSCHÜTZE (Archer)

## Übersicht
Der **Bogenschütze** ist der Meister des Fernkampfes. Mit präzisen Schüssen aus sicherer Entfernung eliminiert er seine Gegner, bevor sie überhaupt in Reichweite kommen. Die Klasse kombiniert hohen Schaden mit exzellenter Reichweite und speziellen Pfeiltypen.

**Spielstil**: Fernkampf-Spezialist mit hoher Reichweite, Präzision und verschiedenen Pfeileffekten. Fokus auf Positionierung und Kopfschuss-Mechaniken.

## Waffentypen
- **Langbögen (LONGBOW)**: Hohe Reichweite und Durchschlagskraft
- **Kurzbögen (SHORTBOW)**: Schnellere Schussrate, geringere Reichweite
- **Armbrüste (CROSSBOW)**: Automatische Nachlademechanik, höchster Einzelschaden

## Rüstungstyp
**Mittlere Lederrüstung** - Balance zwischen Schutz und Beweglichkeit:
- Moderate Rüstungswerte
- Bewegungsgeschwindigkeit
- Reichweiten-Bonus
- Pfeil-Schadens-Verstärkung
- Präzisions-Boni

## Dateien
- `waffen.yml` - Alle Waffen (Langbögen, Kurzbögen, Armbrüste)
- `ruestung.yml` - Alle Rüstungsteile (Kapuze, Jacke, Hose, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit Präzisions- und Schadensboni
- `offhand.yml` - Köcher mit Spezialpfeilen

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

### Langbögen (LONGBOW)

| ID | Name | Tier | Level | Schaden | Reichweite | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| BOGENSCHUETZE_LANGBOGEN_T1 | Einfacher Holzbogen | Gewöhnlich | 1 | 6-9 | 35 Blöcke | - |
| BOGENSCHUETZE_LANGBOGEN_T2 | Verstärkter Kriegsbogen | Ungewöhnlich | 12 | 10-15 | 40 Blöcke | +5% Kopfschuss-Schaden |
| BOGENSCHUETZE_LANGBOGEN_T3 | Elfen-Langbogen | Selten | 22 | 16-23 | 50 Blöcke | +15% Kopfschuss-Schaden, Durchdringung I |
| BOGENSCHUETZE_LANGBOGEN_T4 | Runen-Langbogen des Jägers | Episch | 38 | 25-35 | 60 Blöcke | +28% Kopfschuss-Schaden, Durchdringung II, +12% Krit |
| BOGENSCHUETZE_LANGBOGEN_T5 | Legendärer Adlerbogen | Legendär | 55 | 38-53 | 75 Blöcke | +45% Kopfschuss-Schaden, Durchdringung III, +20% Krit, Ability: Präzisionsschuss |
| BOGENSCHUETZE_LANGBOGEN_T6 | Mythischer Weltenbogen | Mythisch | 78 | 58-81 | 100 Blöcke | +75% Kopfschuss-Schaden, Durchdringung IV, +32% Krit, Ability: Göttlicher Pfeil |

### Kurzbögen (SHORTBOW)

| ID | Name | Tier | Level | Schaden | Schussrate | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| BOGENSCHUETZE_KURZBOGEN_T1 | Einfacher Kurzbogen | Gewöhnlich | 1 | 4-7 | 1.5/s | - |
| BOGENSCHUETZE_KURZBOGEN_T2 | Schneller Jagdbogen | Ungewöhnlich | 12 | 7-11 | 1.8/s | +5% Schussgeschwindigkeit |
| BOGENSCHUETZE_KURZBOGEN_T3 | Windläufer-Bogen | Selten | 22 | 11-17 | 2.1/s | +15% Schussgeschwindigkeit, +8% Krit |
| BOGENSCHUETZE_KURZBOGEN_T4 | Runen-Schnellbogen | Episch | 38 | 17-25 | 2.5/s | +28% Schussgeschwindigkeit, +15% Krit, Mehrfachschuss II |
| BOGENSCHUETZE_KURZBOGEN_T5 | Legendärer Sturmwind-Bogen | Legendär | 55 | 26-38 | 3.0/s | +45% Schussgeschwindigkeit, +24% Krit, Mehrfachschuss III, Ability: Pfeilsalve |
| BOGENSCHUETZE_KURZBOGEN_T6 | Mythischer Orkan-Bogen | Mythisch | 78 | 40-58 | 3.8/s | +70% Schussgeschwindigkeit, +36% Krit, Mehrfachschuss IV, Ability: Pfeilsturm |

### Armbrüste (CROSSBOW)

| ID | Name | Tier | Level | Schaden | Nachladezeit | Besonderheit |
|----|------|------|-------|---------|--------------|--------------|
| BOGENSCHUETZE_ARMBRUST_T1 | Einfache Armbrust | Gewöhnlich | 1 | 8-12 | 3.0s | Auto-Reload |
| BOGENSCHUETZE_ARMBRUST_T2 | Schwere Armbrust | Ungewöhnlich | 12 | 13-19 | 2.7s | Auto-Reload, +10% Durchdringung |
| BOGENSCHUETZE_ARMBRUST_T3 | Belagerungs-Armbrust | Selten | 22 | 20-29 | 2.4s | Auto-Reload, +20% Durchdringung, Rüstungsbrechend I |
| BOGENSCHUETZE_ARMBRUST_T4 | Runen-Armbrust | Episch | 38 | 31-44 | 2.0s | Auto-Reload, +35% Durchdringung, Rüstungsbrechend II, Explosion |
| BOGENSCHUETZE_ARMBRUST_T5 | Legendäre Ballistia | Legendär | 55 | 47-67 | 1.6s | Auto-Reload, +55% Durchdringung, Rüstungsbrechend III, Ability: Explosiv-Bolzen |
| BOGENSCHUETZE_ARMBRUST_T6 | Mythische Weltenzerstörer | Mythisch | 78 | 72-102 | 1.2s | Auto-Reload, +85% Durchdringung, Rüstungsbrechend IV, Ability: Vernichtungs-Bolzen |

### Rüstung - Kapuze (HELMET)

| ID | Name | Tier | Level | Rüstung | Präzision | Besonderheit |
|----|------|------|-------|---------|-----------|--------------|
| BOGENSCHUETZE_KAPUZE_T1 | Einfache Jägerkapuze | Gewöhnlich | 1 | 2 | +2% | - |
| BOGENSCHUETZE_KAPUZE_T2 | Verstärkte Jägerkapuze | Ungewöhnlich | 12 | 3 | +5% | +3% Reichweite |
| BOGENSCHUETZE_KAPUZE_T3 | Adlerauge-Kapuze | Selten | 22 | 5 | +9% | +8% Reichweite, +5% Kopfschuss-Schaden |
| BOGENSCHUETZE_KAPUZE_T4 | Runen-Jägerkapuze | Episch | 38 | 8 | +15% | +15% Reichweite, +15% Kopfschuss-Schaden, +8% Krit |
| BOGENSCHUETZE_KAPUZE_T5 | Legendäre Falken-Kapuze | Legendär | 55 | 12 | +23% | +25% Reichweite, +30% Kopfschuss-Schaden, +15% Krit |
| BOGENSCHUETZE_KAPUZE_T6 | Mythische Adler-Kapuze | Mythisch | 78 | 18 | +34% | +40% Reichweite, +55% Kopfschuss-Schaden, +25% Krit |

### Rüstung - Jacke (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Präzision | Besonderheit |
|----|------|------|-------|---------|-----------|--------------|
| BOGENSCHUETZE_JACKE_T1 | Einfache Jägerjacke | Gewöhnlich | 1 | 3 | +3% | - |
| BOGENSCHUETZE_JACKE_T2 | Verstärkte Jägerjacke | Ungewöhnlich | 12 | 5 | +7% | +5% Pfeil-Schaden |
| BOGENSCHUETZE_JACKE_T3 | Waldläufer-Jacke | Selten | 22 | 8 | +12% | +12% Pfeil-Schaden, +5% Bewegungsgeschw. |
| BOGENSCHUETZE_JACKE_T4 | Runen-Jägerjacke | Episch | 38 | 12 | +19% | +22% Pfeil-Schaden, +10% Bewegungsgeschw., +6% Krit |
| BOGENSCHUETZE_JACKE_T5 | Legendäre Meisterjäger-Jacke | Legendär | 55 | 18 | +29% | +38% Pfeil-Schaden, +15% Bewegungsgeschw., +12% Krit |
| BOGENSCHUETZE_JACKE_T6 | Mythische Götter-Jacke | Mythisch | 78 | 27 | +42% | +62% Pfeil-Schaden, +22% Bewegungsgeschw., +20% Krit |

### Rüstung - Hose (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Präzision | Besonderheit |
|----|------|------|-------|---------|-----------|--------------|
| BOGENSCHUETZE_HOSE_T1 | Einfache Jägerhose | Gewöhnlich | 1 | 2 | +2% | - |
| BOGENSCHUETZE_HOSE_T2 | Verstärkte Jägerhose | Ungewöhnlich | 12 | 4 | +6% | +4% Pfeil-Schaden |
| BOGENSCHUETZE_HOSE_T3 | Waldläufer-Hose | Selten | 22 | 6 | +10% | +10% Pfeil-Schaden, +5% Bewegungsgeschw. |
| BOGENSCHUETZE_HOSE_T4 | Runen-Jägerhose | Episch | 38 | 9 | +16% | +18% Pfeil-Schaden, +10% Bewegungsgeschw., +5% Krit |
| BOGENSCHUETZE_HOSE_T5 | Legendäre Meisterjäger-Hose | Legendär | 55 | 14 | +24% | +32% Pfeil-Schaden, +15% Bewegungsgeschw., +10% Krit |
| BOGENSCHUETZE_HOSE_T6 | Mythische Götter-Hose | Mythisch | 78 | 21 | +35% | +52% Pfeil-Schaden, +22% Bewegungsgeschw., +16% Krit |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | Präzision | Besonderheit |
|----|------|------|-------|---------|-----------|--------------|
| BOGENSCHUETZE_STIEFEL_T1 | Einfache Jägerstiefel | Gewöhnlich | 1 | 2 | +3% | +2% Bewegungsgeschw. |
| BOGENSCHUETZE_STIEFEL_T2 | Verstärkte Jägerstiefel | Ungewöhnlich | 12 | 3 | +7% | +5% Bewegungsgeschw., +3% Reichweite |
| BOGENSCHUETZE_STIEFEL_T3 | Waldläufer-Stiefel | Selten | 22 | 5 | +11% | +10% Bewegungsgeschw., +8% Reichweite |
| BOGENSCHUETZE_STIEFEL_T4 | Runen-Jägerstiefel | Episch | 38 | 7 | +17% | +15% Bewegungsgeschw., +15% Reichweite, +4% Krit |
| BOGENSCHUETZE_STIEFEL_T5 | Legendäre Meisterjäger-Stiefel | Legendär | 55 | 11 | +26% | +22% Bewegungsgeschw., +25% Reichweite, +8% Krit |
| BOGENSCHUETZE_STIEFEL_T6 | Mythische Götter-Stiefel | Mythisch | 78 | 17 | +38% | +32% Bewegungsgeschw., +40% Reichweite, +14% Krit |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| BOGENSCHUETZE_RING_T1 | Einfacher Präzisionsring | Gewöhnlich | 1 | +3% Präzision |
| BOGENSCHUETZE_RING_T2 | Ring des Jägers | Ungewöhnlich | 12 | +8% Präzision, +5% Pfeil-Schaden |
| BOGENSCHUETZE_RING_T3 | Ring des Scharfschützen | Selten | 22 | +14% Präzision, +12% Pfeil-Schaden, +5% Reichweite |
| BOGENSCHUETZE_RING_T4 | Runenring des Adlerauges | Episch | 38 | +22% Präzision, +22% Pfeil-Schaden, +12% Reichweite, +8% Krit |
| BOGENSCHUETZE_RING_T5 | Legendärer Meister-Ring | Legendär | 55 | +35% Präzision, +38% Pfeil-Schaden, +22% Reichweite, +15% Krit |
| BOGENSCHUETZE_RING_T6 | Mythischer Götter-Ring | Mythisch | 78 | +54% Präzision, +62% Pfeil-Schaden, +38% Reichweite, +25% Krit |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| BOGENSCHUETZE_AMULETT_T1 | Einfaches Jäger-Amulett | Gewöhnlich | 1 | +5% Pfeil-Schaden |
| BOGENSCHUETZE_AMULETT_T2 | Amulett der Geschwindigkeit | Ungewöhnlich | 12 | +10% Pfeil-Schaden, +5% Bewegungsgeschw. |
| BOGENSCHUETZE_AMULETT_T3 | Amulett des Waldläufers | Selten | 22 | +18% Pfeil-Schaden, +10% Bewegungsgeschw., +5% Präzision |
| BOGENSCHUETZE_AMULETT_T4 | Runen-Amulett des Adlers | Episch | 38 | +32% Pfeil-Schaden, +15% Bewegungsgeschw., +12% Präzision, +15% Reichweite |
| BOGENSCHUETZE_AMULETT_T5 | Legendäres Falken-Amulett | Legendär | 55 | +52% Pfeil-Schaden, +22% Bewegungsgeschw., +22% Präzision, +28% Reichweite |
| BOGENSCHUETZE_AMULETT_T6 | Mythisches Adler-Amulett | Mythisch | 78 | +82% Pfeil-Schaden, +32% Bewegungsgeschw., +35% Präzision, +45% Reichweite |

### Offhand - Köcher (QUIVER)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| BOGENSCHUETZE_KOECHER_T1 | Einfacher Lederköcher | Gewöhnlich | 1 | +10 Pfeile, +5% Pfeil-Schaden |
| BOGENSCHUETZE_KOECHER_T2 | Verstärkter Köcher | Ungewöhnlich | 12 | +20 Pfeile, +12% Pfeil-Schaden, Feuerpfeile |
| BOGENSCHUETZE_KOECHER_T3 | Jäger-Köcher | Selten | 22 | +35 Pfeile, +22% Pfeil-Schaden, Feuerpfeile, Giftpfeile |
| BOGENSCHUETZE_KOECHER_T4 | Runen-Köcher | Episch | 38 | +55 Pfeile, +35% Pfeil-Schaden, Alle Pfeiltypen, +8% Krit |
| BOGENSCHUETZE_KOECHER_T5 | Legendärer Unendlich-Köcher | Legendär | 55 | Unendlich Pfeile, +55% Pfeil-Schaden, Alle Pfeiltypen +, +15% Krit, Explosivpfeile |
| BOGENSCHUETZE_KOECHER_T6 | Mythischer Götter-Köcher | Mythisch | 78 | Unendlich Pfeile, +85% Pfeil-Schaden, Alle Pfeiltypen ++, +25% Krit, Göttliche Pfeile |

## Set-Boni

### T4 Set - Runen-Jäger (4 Teile)
- **2 Teile**: +18% Präzision, +20% Pfeil-Schaden, +12% Reichweite
- **3 Teile**: +32% Präzision, +38% Pfeil-Schaden, +22% Reichweite, +10% Krit
- **4 Teile**: +52% Präzision, +65% Pfeil-Schaden, +38% Reichweite, +18% Krit, Ability: Dreifach-Schuss

### T5 Set - Legendärer Meisterjäger (4 Teile)
- **2 Teile**: +32% Präzision, +40% Pfeil-Schaden, +22% Reichweite, +15% Krit
- **3 Teile**: +55% Präzision, +70% Pfeil-Schaden, +38% Reichweite, +25% Krit, Unendlich Pfeile
- **4 Teile**: +88% Präzision, +115% Pfeil-Schaden, +60% Reichweite, +40% Krit, Ability: Pfeil-Barrage (5 Pfeile gleichzeitig)

### T6 Set - Mythischer Götter-Bogenschütze (4 Teile)
- **2 Teile**: +52% Präzision, +70% Pfeil-Schaden, +38% Reichweite, +25% Krit
- **3 Teile**: +85% Präzision, +120% Pfeil-Schaden, +65% Reichweite, +40% Krit, Durchdringung +100%
- **4 Teile**: +140% Präzision, +200% Pfeil-Schaden, +105% Reichweite, +65% Krit, Ability: Göttliche Salve (20 zielsuchende Pfeile)

## Besondere Mechaniken

### Kopfschuss-System
- Kopftreffer: +100% Basis-Schaden
- Mit Kopfschuss-Boni: Bis zu +275% Schaden möglich (T6)
- Kritischer Kopfschuss: +400% Schaden
- Bei Tod durch Kopfschuss: Sofortige Cooldown-Reduktion

### Pfeiltypen (aus Köcher)
- **Normal**: Standard-Schaden
- **Feuer**: +50% Schaden über 5s (DoT)
- **Gift**: -25% Heilung, Schaden über Zeit
- **Explosiv**: AoE-Schaden in 3-Block-Radius
- **Durchdringend**: Trifft mehrere Gegner in Linie
- **Blitz**: Ketten-Effekt auf nahe Gegner
- **Göttlich (T6)**: Alle Effekte kombiniert

### Reichweiten-Mechanik
- Optimale Reichweite: 20-40 Blöcke
- Über optimale Reichweite: +20% Schaden
- Unter 10 Blöcke: -30% Schaden (zu nah)
- Mit Reichweiten-Boni: Optimale Distanz verschiebt sich

### Mehrfachschuss
- Kurzbögen T4+: Schießt 2-4 Pfeile gleichzeitig
- Jeder Pfeil verursacht 60% Schaden
- Erhöht DPS massiv
- Funktioniert mit allen Pfeiltypen

### Präzisions-System
- Präzision reduziert Streuung
- Über 50% Präzision: Keine Streuung mehr
- Präzision erhöht Kopfschuss-Chance um 50% des Wertes
- 100% Präzision = garantierter Kopfschuss bei Zielausrichtung

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `BOGENSCHUETZE_[TYP]_T[1-6]`
- Langbögen: Höchste Reichweite (35-100 Blöcke)
- Kurzbögen: Höchste Schussrate (1.5-3.8/Sek)
- Armbrüste: Höchster Einzelschaden
- Pfeil-Schaden skaliert mit Präzision und speziellen Boni
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Köcher ab T5 haben unendlich Pfeile
