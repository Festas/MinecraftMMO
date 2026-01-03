# 🗡️ ASSASSINE (Assassin)

## Übersicht
Der **Assassine** ist ein tödlicher Meuchelmörder, der im Schatten operiert und seine Gegner mit blitzschnellen Angriffen und verheerenden kritischen Treffern eliminiert. Mit leichter Lederrüstung und Doppelwaffen ist der Assassine auf Geschwindigkeit und Präzision ausgelegt.

**Spielstil**: Hochmobiler Burst-Schadensbringer mit extrem hoher Krit-Chance. Spezialisiert auf Einzelziele und Hinterhalt-Mechaniken.

## Waffentypen
- **Dolche (DAGGER)**: Ultraschnelle Einhandwaffen mit höchster Krit-Chance
- **Kurzschwerter (SHORT_SWORD)**: Ausgewogene schnelle Klingen
- **Klauen (CLAW)**: Einhandwaffen mit Blutungseffekten
- **Wurfmesser (THROWING_KNIFE)**: Fernkampfwaffen für Ranged-Schaden

## Rüstungstyp
**Leichte Lederrüstung** - Bietet minimale Rüstung, aber maximale Beweglichkeit:
- Hohe Ausweich-Chance
- Kritische Treffer-Verstärkung
- Bewegungsgeschwindigkeit
- Gift- und Blutungsschaden
- Schattenmagie-Boni

## Dateien
- `waffen.yml` - Alle Waffen (Dolche, Kurzschwerter, Klauen, Wurfmesser)
- `ruestung.yml` - Alle Rüstungsteile (Kapuze, Jacke, Hose, Stiefel)
- `schmuck.yml` - Ringe und Amulette mit Krit- und Geschwindigkeitsboni
- `offhand.yml` - Zweite Dolche und Wurfmesser-Sets

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

### Dolche (DAGGER)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| ASSASSINE_DOLCH_T1 | Rostige Klinge | Gewöhnlich | 1 | 3-5 | 2.0 | +5% Krit |
| ASSASSINE_DOLCH_T2 | Diebesdolch | Ungewöhnlich | 12 | 5-8 | 2.0 | +12% Krit, +5% Ausweichen |
| ASSASSINE_DOLCH_T3 | Schattendolch | Selten | 22 | 8-12 | 2.0 | +20% Krit, +10% Ausweichen, Gift I |
| ASSASSINE_DOLCH_T4 | Runendolch der Stille | Episch | 38 | 13-19 | 2.0 | +30% Krit, +15% Ausweichen, Gift II, +50% Krit-Schaden |
| ASSASSINE_DOLCH_T5 | Legendärer Seelenschnitter | Legendär | 55 | 20-28 | 2.0 | +42% Krit, +22% Ausweichen, Gift III, +80% Krit-Schaden, Ability: Hinrichtung |
| ASSASSINE_DOLCH_T6 | Mythischer Schattenfang | Mythisch | 78 | 31-43 | 2.0 | +58% Krit, +30% Ausweichen, Gift IV, +125% Krit-Schaden, Ability: Schatten-Tanz |

### Kurzschwerter (SHORT_SWORD)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| ASSASSINE_KURZSCHWERT_T1 | Einfaches Kurzschwert | Gewöhnlich | 1 | 4-6 | 1.7 | +3% Krit |
| ASSASSINE_KURZSCHWERT_T2 | Stählernes Kurzschwert | Ungewöhnlich | 12 | 7-10 | 1.7 | +10% Krit, +3% Ausweichen |
| ASSASSINE_KURZSCHWERT_T3 | Nachtklinge | Selten | 22 | 11-15 | 1.7 | +18% Krit, +8% Ausweichen, +15% Schaden |
| ASSASSINE_KURZSCHWERT_T4 | Runenschwert der Schatten | Episch | 38 | 17-23 | 1.7 | +28% Krit, +12% Ausweichen, +25% Schaden, Blutung II |
| ASSASSINE_KURZSCHWERT_T5 | Legendäres Mondlicht-Schwert | Legendär | 55 | 26-35 | 1.7 | +38% Krit, +18% Ausweichen, +40% Schaden, Ability: Mondschlag |
| ASSASSINE_KURZSCHWERT_T6 | Mythischer Nachtbringer | Mythisch | 78 | 40-54 | 1.7 | +52% Krit, +26% Ausweichen, +60% Schaden, Ability: Ewige Nacht |

### Klauen (CLAW)

| ID | Name | Tier | Level | Schaden | Geschw. | Besonderheit |
|----|------|------|-------|---------|---------|--------------|
| ASSASSINE_KLAUE_T1 | Einfache Krallen | Gewöhnlich | 1 | 3-6 | 2.2 | Blutung I (2s) |
| ASSASSINE_KLAUE_T2 | Stahlklauen | Ungewöhnlich | 12 | 6-9 | 2.2 | Blutung II (3s), +8% Krit |
| ASSASSINE_KLAUE_T3 | Bestien-Klauen | Selten | 22 | 9-14 | 2.2 | Blutung III (5s), +15% Krit, +10% Angriffsgeschw. |
| ASSASSINE_KLAUE_T4 | Runen-Klauen des Jägers | Episch | 38 | 14-21 | 2.2 | Blutung IV (7s), +24% Krit, +18% Angriffsgeschw., Zerreißen |
| ASSASSINE_KLAUE_T5 | Legendäre Drachen-Klauen | Legendär | 55 | 22-32 | 2.2 | Blutung V (10s), +35% Krit, +28% Angriffsgeschw., Ability: Raserei |
| ASSASSINE_KLAUE_T6 | Mythische Dämon-Klauen | Mythisch | 78 | 34-49 | 2.2 | Blutung VI (15s), +48% Krit, +40% Angriffsgeschw., Ability: Blutrausch |

### Wurfmesser (THROWING_KNIFE)

| ID | Name | Tier | Level | Schaden | Reichweite | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| ASSASSINE_WURFMESSER_T1 | Einfache Wurfmesser | Gewöhnlich | 1 | 2-4 | 15 Blöcke | - |
| ASSASSINE_WURFMESSER_T2 | Gewichtete Wurfklingen | Ungewöhnlich | 12 | 4-6 | 20 Blöcke | +5% Krit |
| ASSASSINE_WURFMESSER_T3 | Vergiftete Wurfmesser | Selten | 22 | 6-9 | 25 Blöcke | +12% Krit, Gift II |
| ASSASSINE_WURFMESSER_T4 | Runen-Wurfmesser | Episch | 38 | 9-14 | 30 Blöcke | +20% Krit, Gift III, Durchdringung |
| ASSASSINE_WURFMESSER_T5 | Legendäre Schattenklingen | Legendär | 55 | 14-21 | 35 Blöcke | +30% Krit, Gift IV, Ability: Klingen-Sturm |
| ASSASSINE_WURFMESSER_T6 | Mythische Todessterne | Mythisch | 78 | 22-32 | 45 Blöcke | +45% Krit, Gift V, Ability: Sternenhagel |

### Rüstung - Kapuze (HELMET)

| ID | Name | Tier | Level | Rüstung | Ausweichen | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| ASSASSINE_KAPUZE_T1 | Alte Lederkapuze | Gewöhnlich | 1 | 1 | +2% | - |
| ASSASSINE_KAPUZE_T2 | Verstärkte Kapuze | Ungewöhnlich | 12 | 2 | +4% | +3% Krit |
| ASSASSINE_KAPUZE_T3 | Schattenkapuze | Selten | 22 | 3 | +7% | +8% Krit, +5% Bewegungsgeschw. |
| ASSASSINE_KAPUZE_T4 | Runen-Kapuze der Nacht | Episch | 38 | 5 | +11% | +15% Krit, +10% Bewegungsgeschw., +20% Krit-Schaden |
| ASSASSINE_KAPUZE_T5 | Legendäre Assassinen-Kapuze | Legendär | 55 | 8 | +16% | +24% Krit, +15% Bewegungsgeschw., +40% Krit-Schaden |
| ASSASSINE_KAPUZE_T6 | Mythische Schatten-Kapuze | Mythisch | 78 | 12 | +23% | +36% Krit, +22% Bewegungsgeschw., +70% Krit-Schaden |

### Rüstung - Jacke (CHESTPLATE)

| ID | Name | Tier | Level | Rüstung | Ausweichen | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| ASSASSINE_JACKE_T1 | Alte Lederjacke | Gewöhnlich | 1 | 2 | +3% | - |
| ASSASSINE_JACKE_T2 | Verstärkte Jacke | Ungewöhnlich | 12 | 4 | +6% | +5% Krit |
| ASSASSINE_JACKE_T3 | Schattenjacke | Selten | 22 | 6 | +10% | +12% Krit, +5% Bewegungsgeschw. |
| ASSASSINE_JACKE_T4 | Runen-Jacke der Nacht | Episch | 38 | 9 | +16% | +20% Krit, +10% Bewegungsgeschw., +30% Krit-Schaden |
| ASSASSINE_JACKE_T5 | Legendäre Assassinen-Jacke | Legendär | 55 | 14 | +24% | +32% Krit, +15% Bewegungsgeschw., +55% Krit-Schaden |
| ASSASSINE_JACKE_T6 | Mythische Schatten-Jacke | Mythisch | 78 | 21 | +34% | +48% Krit, +22% Bewegungsgeschw., +90% Krit-Schaden |

### Rüstung - Hose (LEGGINGS)

| ID | Name | Tier | Level | Rüstung | Ausweichen | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| ASSASSINE_HOSE_T1 | Alte Lederhose | Gewöhnlich | 1 | 1 | +2% | - |
| ASSASSINE_HOSE_T2 | Verstärkte Hose | Ungewöhnlich | 12 | 3 | +5% | +4% Krit |
| ASSASSINE_HOSE_T3 | Schattenhose | Selten | 22 | 5 | +9% | +10% Krit, +5% Bewegungsgeschw. |
| ASSASSINE_HOSE_T4 | Runen-Hose der Nacht | Episch | 38 | 7 | +14% | +18% Krit, +10% Bewegungsgeschw., +25% Krit-Schaden |
| ASSASSINE_HOSE_T5 | Legendäre Assassinen-Hose | Legendär | 55 | 11 | +21% | +28% Krit, +15% Bewegungsgeschw., +45% Krit-Schaden |
| ASSASSINE_HOSE_T6 | Mythische Schatten-Hose | Mythisch | 78 | 17 | +30% | +42% Krit, +22% Bewegungsgeschw., +75% Krit-Schaden |

### Rüstung - Stiefel (BOOTS)

| ID | Name | Tier | Level | Rüstung | Ausweichen | Besonderheit |
|----|------|------|-------|---------|------------|--------------|
| ASSASSINE_STIEFEL_T1 | Alte Lederstiefel | Gewöhnlich | 1 | 1 | +3% | +2% Bewegungsgeschw. |
| ASSASSINE_STIEFEL_T2 | Verstärkte Stiefel | Ungewöhnlich | 12 | 2 | +6% | +5% Bewegungsgeschw., +3% Krit |
| ASSASSINE_STIEFEL_T3 | Schattenstiefel | Selten | 22 | 3 | +10% | +10% Bewegungsgeschw., +8% Krit |
| ASSASSINE_STIEFEL_T4 | Runen-Stiefel der Nacht | Episch | 38 | 4 | +16% | +15% Bewegungsgeschw., +15% Krit, +20% Krit-Schaden |
| ASSASSINE_STIEFEL_T5 | Legendäre Assassinen-Stiefel | Legendär | 55 | 6 | +24% | +22% Bewegungsgeschw., +24% Krit, +40% Krit-Schaden |
| ASSASSINE_STIEFEL_T6 | Mythische Schatten-Stiefel | Mythisch | 78 | 9 | +34% | +32% Bewegungsgeschw., +36% Krit, +65% Krit-Schaden |

### Schmuck - Ringe (RING)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| ASSASSINE_RING_T1 | Einfacher Schattenring | Gewöhnlich | 1 | +2% Krit |
| ASSASSINE_RING_T2 | Ring der Geschwindigkeit | Ungewöhnlich | 12 | +6% Krit, +5% Ausweichen |
| ASSASSINE_RING_T3 | Ring der Präzision | Selten | 22 | +12% Krit, +10% Ausweichen, +15% Krit-Schaden |
| ASSASSINE_RING_T4 | Runenring der Tödlichkeit | Episch | 38 | +20% Krit, +16% Ausweichen, +35% Krit-Schaden |
| ASSASSINE_RING_T5 | Legendärer Assassinen-Ring | Legendär | 55 | +32% Krit, +24% Ausweichen, +60% Krit-Schaden, +10% Bewegungsgeschw. |
| ASSASSINE_RING_T6 | Mythischer Ring des Todes | Mythisch | 78 | +48% Krit, +34% Ausweichen, +100% Krit-Schaden, +18% Bewegungsgeschw. |

### Schmuck - Amulette (AMULET)

| ID | Name | Tier | Level | Besonderheit |
|----|------|------|-------|--------------|
| ASSASSINE_AMULETT_T1 | Einfaches Schattenamullet | Gewöhnlich | 1 | +3% Krit |
| ASSASSINE_AMULETT_T2 | Amulett der Schnelligkeit | Ungewöhnlich | 12 | +8% Krit, +5% Bewegungsgeschw. |
| ASSASSINE_AMULETT_T3 | Amulett des Jägers | Selten | 22 | +15% Krit, +10% Bewegungsgeschw., +5% Ausweichen |
| ASSASSINE_AMULETT_T4 | Runen-Amulett der Nacht | Episch | 38 | +24% Krit, +15% Bewegungsgeschw., +12% Ausweichen, Gift-Immunität |
| ASSASSINE_AMULETT_T5 | Legendäres Assassinen-Amulett | Legendär | 55 | +38% Krit, +22% Bewegungsgeschw., +20% Ausweichen, Gift-Immunität, +40% Krit-Schaden |
| ASSASSINE_AMULETT_T6 | Mythisches Schatten-Amulett | Mythisch | 78 | +56% Krit, +32% Bewegungsgeschw., +30% Ausweichen, Gift & Blutungs-Immunität, +80% Krit-Schaden |

### Offhand - Zweite Dolche (DAGGER_OFFHAND)

| ID | Name | Tier | Level | Schaden | Besonderheit |
|----|------|------|-------|---------|--------------|
| ASSASSINE_OFFHAND_DOLCH_T1 | Zweiter Dolch | Gewöhnlich | 1 | 2-4 | +3% Krit |
| ASSASSINE_OFFHAND_DOLCH_T2 | Zwillings-Dolch | Ungewöhnlich | 12 | 4-6 | +8% Krit, +5% Angriffsgeschw. |
| ASSASSINE_OFFHAND_DOLCH_T3 | Schatten-Zwillingsdolch | Selten | 22 | 6-9 | +15% Krit, +10% Angriffsgeschw. |
| ASSASSINE_OFFHAND_DOLCH_T4 | Runen-Zwillingsdolch | Episch | 38 | 10-14 | +24% Krit, +18% Angriffsgeschw., +30% Krit-Schaden |
| ASSASSINE_OFFHAND_DOLCH_T5 | Legendärer Seelen-Zwilling | Legendär | 55 | 15-21 | +36% Krit, +28% Angriffsgeschw., +55% Krit-Schaden |
| ASSASSINE_OFFHAND_DOLCH_T6 | Mythischer Schatten-Zwilling | Mythisch | 78 | 23-33 | +52% Krit, +40% Angriffsgeschw., +90% Krit-Schaden |

## Set-Boni

### T4 Set - Runen-Assassine (4 Teile)
- **2 Teile**: +15% Krit, +10% Ausweichen, +20% Krit-Schaden
- **3 Teile**: +28% Krit, +18% Ausweichen, +45% Krit-Schaden, +10% Bewegungsgeschw.
- **4 Teile**: +45% Krit, +28% Ausweichen, +80% Krit-Schaden, +18% Bewegungsgeschw., Ability: Schattensprung

### T5 Set - Legendärer Schattenmörder (4 Teile)
- **2 Teile**: +25% Krit, +18% Ausweichen, +40% Krit-Schaden, +15% Bewegungsgeschw.
- **3 Teile**: +42% Krit, +28% Ausweichen, +75% Krit-Schaden, +25% Bewegungsgeschw., Unsichtbarkeit 3s
- **4 Teile**: +68% Krit, +42% Ausweichen, +135% Krit-Schaden, +35% Bewegungsgeschw., Ability: Meister-Assassine (Garantierter Krit + 300% Schaden)

### T6 Set - Mythischer Schatten-Tänzer (4 Teile)
- **2 Teile**: +40% Krit, +28% Ausweichen, +70% Krit-Schaden, +22% Bewegungsgeschw.
- **3 Teile**: +65% Krit, +42% Ausweichen, +125% Krit-Schaden, +35% Bewegungsgeschw., Permanente Unsichtbarkeit (außer beim Angriff)
- **4 Teile**: +105% Krit, +60% Ausweichen, +220% Krit-Schaden, +50% Bewegungsgeschw., Ability: Schatten-Avatar (Unendliche Krit-Chance für 8s)

## Besondere Mechaniken

### Hinterhalt-System
- Angriff aus Unsichtbarkeit: +200% Schaden
- Angriff von hinten: +50% Schaden
- Erste Treffer in Kampf: +30% Schaden
- Kombination möglich für massive Burst-Schaden

### Kritische Treffer
- Basis-Krit-Chance: 10% (höchste aller Klassen)
- Krit-Multiplikator: 2.5x (Standard 2.0x)
- Krit-Chance kann bis zu 100% erreichen (mit voller Ausrüstung)
- Jeder Krit aktiviert Kombo-Counter

### Ausweichen
- Ausweichen gibt vollständige Schadens-Negierung
- Maximal 50% Ausweich-Chance erreichbar
- Nach Ausweichen: +20% Bewegungsgeschwindigkeit für 2s

### Gift-System
- Gift stapelt bis zu 5x
- Jeder Stack: 2% Max-HP Schaden pro Sekunde
- 5 Stacks = 10% Max-HP/Sek = extrem tödlich
- Gift durchdringt Rüstung komplett

### Hinrichtungs-Mechanik (T5/T6)
- Gegner unter 20% HP: +100% Schaden
- Gegner unter 10% HP: +200% Schaden
- Bei Tötung: Sofortige Cooldown-Reduktion (50%)

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `ASSASSINE_[TYP]_T[1-6]`
- Dolche haben höchste Angriffsgeschwindigkeit (2.0-2.2)
- Krit-Chance skaliert stark: T1 (5%) → T6 (58%)
- Krit-Schaden skaliert noch stärker: T4 (50%) → T6 (125%)
- Ausweichen startet bei T1 (2%) und erreicht T6 (34%)
- Set-Boni nur für T4, T5, T6
- Abilities nur für T5 und T6 Waffen
- Dual-Wielding (Doppelwaffen) ist Standard-Spielstil
