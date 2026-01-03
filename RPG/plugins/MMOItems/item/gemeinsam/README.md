# 🎒 GEMEINSAME ITEMS (Shared Items)

## Übersicht
Diese Sammlung enthält **Items, die von allen Klassen genutzt werden können**. Dazu gehören Tränke, Materialien, Verbrauchsgegenstände und andere universelle Items.

**Verwendung**: Alle Klassen (Krieger, Magier, Assassine, Bogenschütze, Schamane, Beschwörer, Berserker, Paladin)

## Kategorien

### Tränke (Potions)
- **Heiltränke**: Stellen HP wieder her
- **Manatränke**: Stellen Mana wieder her
- **Bufftränke**: Temporäre Verstärkungen
- **Regenerationstränke**: Langfristige Regeneration

### Materialien (Materials)
- **Crafting-Materialien**: Ressourcen zum Herstellen von Items
- **Upgrade-Materialien**: Items zum Verbessern von Ausrüstung
- **Quest-Items**: Spezielle Items für Quests

### Verbrauchsgegenstände (Consumables)
- **Nahrung**: Stellt Hunger und HP wieder her
- **Scrolls**: Einmalige magische Effekte
- **Bomben**: Explosionswaffen für alle Klassen
- **Gifte**: Temporäre Waffen-Verstärkungen

### Werkzeuge (Tools)
- **Spitzhacken**: Zum Abbau von Erzen
- **Äxte**: Zum Fällen von Bäumen
- **Schaufeln**: Zum Graben
- **Angeln**: Zum Fischen

### Verschiedenes (Miscellaneous)
- **Pets**: Begleiter ohne Kampfwert
- **Kosmetische Items**: Rein optische Items
- **Transportmittel**: Reittiere und Fortbewegungsmittel
- **Schlüssel**: Zum Öffnen von Truhen und Türen

## Tier-System

Gemeinsame Items folgen ebenfalls dem Tier-System:

| Tier | Name | Level | Farbe |
|------|------|-------|-------|
| T1 | Gewöhnlich | 1 | Weiß |
| T2 | Ungewöhnlich | 12 | Grün |
| T3 | Selten | 22 | Blau |
| T4 | Episch | 38 | Lila |
| T5 | Legendär | 55 | Orange |
| T6 | Mythisch | 78 | Rot |

## Beispiel-Items

### Heiltränke (Health Potions)

| ID | Name | Tier | Level | Heilung | Cooldown | Besonderheit |
|----|------|------|-------|---------|----------|--------------|
| GEMEINSAM_HEILTRANK_T1 | Kleiner Heiltrank | Gewöhnlich | 1 | 50 HP | 30s | Sofortige Heilung |
| GEMEINSAM_HEILTRANK_T2 | Heiltrank | Ungewöhnlich | 12 | 150 HP | 30s | Sofortige Heilung |
| GEMEINSAM_HEILTRANK_T3 | Großer Heiltrank | Selten | 22 | 350 HP | 30s | Sofortige Heilung + 3s Regen |
| GEMEINSAM_HEILTRANK_T4 | Überragender Heiltrank | Episch | 38 | 750 HP | 25s | Sofortige Heilung + 5s Regen |
| GEMEINSAM_HEILTRANK_T5 | Legendärer Heiltrank | Legendär | 55 | 1500 HP | 20s | Vollheilung + 10s Regen |
| GEMEINSAM_HEILTRANK_T6 | Mythischer Heiltrank | Mythisch | 78 | 3000 HP | 15s | Vollheilung + Unverwundbar 2s |

### Manatränke (Mana Potions)

| ID | Name | Tier | Level | Mana | Cooldown | Besonderheit |
|----|------|------|-------|------|----------|--------------|
| GEMEINSAM_MANATRANK_T1 | Kleiner Manatrank | Gewöhnlich | 1 | 30 Mana | 30s | Sofortige Regeneration |
| GEMEINSAM_MANATRANK_T2 | Manatrank | Ungewöhnlich | 12 | 100 Mana | 30s | Sofortige Regeneration |
| GEMEINSAM_MANATRANK_T3 | Großer Manatrank | Selten | 22 | 250 Mana | 30s | Sofortige Regen + 3s Regen |
| GEMEINSAM_MANATRANK_T4 | Überragender Manatrank | Episch | 38 | 550 Mana | 25s | Sofortige Regen + 5s Regen |
| GEMEINSAM_MANATRANK_T5 | Legendärer Manatrank | Legendär | 55 | 1200 Mana | 20s | Vollregeneration + 10s Regen |
| GEMEINSAM_MANATRANK_T6 | Mythischer Manatrank | Mythisch | 78 | 2500 Mana | 15s | Vollregeneration + 50% Kosten-Reduktion 10s |

### Bufftränke (Buff Potions)

| ID | Name | Tier | Level | Effekt | Dauer | Besonderheit |
|----|------|------|-------|--------|-------|--------------|
| GEMEINSAM_STAERKETRANK | Trank der Stärke | Ungewöhnlich | 12 | +15% Schaden | 5min | - |
| GEMEINSAM_GESCHWINDIGKEIT | Trank der Geschwindigkeit | Selten | 22 | +25% Bewegung | 5min | - |
| GEMEINSAM_REGENERATION | Trank der Regeneration | Selten | 22 | +5 HP/s | 3min | - |
| GEMEINSAM_RESISTENZ | Trank der Resistenz | Episch | 38 | +20% Schadensreduzierung | 5min | - |
| GEMEINSAM_UNSICHTBARKEIT | Trank der Unsichtbarkeit | Legendär | 55 | Unsichtbar | 2min | Bricht bei Angriff |

### Bomben (Bombs)

| ID | Name | Tier | Level | Schaden | Radius | Besonderheit |
|----|------|------|-------|---------|--------|--------------|
| GEMEINSAM_BOMBE_T1 | Einfache Bombe | Gewöhnlich | 1 | 30-40 | 3 Blöcke | AoE-Schaden |
| GEMEINSAM_BOMBE_T2 | Verstärkte Bombe | Ungewöhnlich | 12 | 60-80 | 4 Blöcke | AoE-Schaden |
| GEMEINSAM_BOMBE_T3 | Schwere Bombe | Selten | 22 | 120-160 | 5 Blöcke | AoE-Schaden + Betäubung |
| GEMEINSAM_FEUERBOMBE | Feuerbombe | Episch | 38 | 200-260 | 6 Blöcke | Feuer-DoT 5s |
| GEMEINSAM_EISBOMBE | Eisbombe | Episch | 38 | 180-240 | 6 Blöcke | Verlangsamung 5s |
| GEMEINSAM_BLITZBOMBE | Blitzbombe | Legendär | 55 | 350-450 | 7 Blöcke | Kettenschaden zu 3 Zielen |

### Materialien (Materials)

| ID | Name | Tier | Verwendung |
|----|------|------|------------|
| GEMEINSAM_EISENBARREN | Eisenbarren | Gewöhnlich | Basis-Crafting |
| GEMEINSAM_STAHLBARREN | Stahlbarren | Ungewöhnlich | Fortgeschrittenes Crafting |
| GEMEINSAM_MITHRILBARREN | Mithrilbarren | Selten | High-Level Crafting |
| GEMEINSAM_ADAMANTBARREN | Adamantbarren | Episch | Endgame Crafting |
| GEMEINSAM_RUNENSTEIN | Runenstein | Legendär | Verzauberungen |
| GEMEINSAM_KRISTALL | Mystischer Kristall | Mythisch | Mythische Upgrades |

## Implementierungshinweise
- Alle Item-IDs folgen dem Schema: `GEMEINSAM_[TYP]_T[1-6]`
- Tränke haben Cooldowns, um Spam zu verhindern
- Materialien sind stapelbar (Stack-Size je nach Seltenheit)
- Bomben sind limitiert auf 16 pro Stack
- Werkzeuge haben Haltbarkeit und können repariert werden
- Quest-Items sind unique und nicht handelbar

## Dateien
- `traenke.yml` - Alle Tränke (Heil-, Mana-, Bufftränke)
- `materialien.yml` - Crafting- und Upgrade-Materialien
- `verbrauchsgueter.yml` - Bomben, Gifte, Scrolls
- `werkzeuge.yml` - Spitzhacken, Äxte, Schaufeln, Angeln
- `verschiedenes.yml` - Pets, kosmetische Items, Schlüssel
