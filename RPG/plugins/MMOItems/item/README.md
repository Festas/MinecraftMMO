# MMOItems Item Directory

## ⚠️ WICHTIG: Strukturänderung

**MMOItems liest NUR Dateien direkt im `/item/` Verzeichnis!**  
Unterordner werden vom Plugin NICHT gescannt!

Items müssen in Dateien organisiert werden, die nach **MMOItems Item-Type** benannt sind (z.B. `SWORD.yml`, `ARMOR.yml`, `STAFF.yml`).

## Aktuelle Struktur (✓ KORREKT)

Alle Items befinden sich jetzt in typ-basierten Dateien im Root `/item/` Verzeichnis:

### Waffen
- `SWORD.yml` (62 Items) - Alle einhändigen Schwerter (Krieger, Paladin, Assassinen + Boss-Waffen)
- `GREATSWORD.yml` (1 Item) - Zweihänder
- `AXE.yml` (25 Items) - Äxte inkl. Boss-Axt (BURGHERR_AXT)
- `GREATAXE.yml` (6 Items) - Großäxte
- `HAMMER.yml` (11 Items) - Hämmer
- `GREATHAMMER.yml` (7 Items) - Kriegshämmer
- `DAGGER.yml` (19 Items) - Assassinen-Dolche
- `SPEAR.yml` (3 Items) - Speere inkl. Boss-Speer (SUMPF_DREIZACK)
- `STAFF.yml` (30 Items) - Magier/Beschwörer/Schamanen-Stäbe inkl. Boss-Stab (HEXENSTAB)
- `WAND.yml` (9 Items) - Zauberstäbe
- `BOW.yml` (19 Items) - Bogenschützen-Bögen

### Rüstung & Accessoires
- `ARMOR.yml` (194 Items) - Alle Rüstungsteile für alle Klassen (Helme, Brustplatten, Hosen, Stiefel)
- `ACCESSORY.yml` (102 Items) - Ringe, Amulette und anderer Schmuck
- `SHIELD.yml` (18 Items) - Schilde

### Nebenhand & Katalysatoren
- `CATALYST.yml` (12 Items) - Nebenhand-Items (Orbs, Katalysatoren)

### Verbrauchsgüter & Materialien
- `CONSUMABLE.yml` (21 Items) - Tränke, Elixiere, Verbrauchsgüter
- `MATERIAL.yml` (6 Items) - Crafting-Materialien
- `TOOL.yml` (15 Items) - Werkzeuge (Spitzhacken, Schaufeln, etc.)
- `MISCELLANEOUS.yml` (134 Items) - Quest-Items, Zonen-Materialien und sonstige Items

**Gesamt: 694 Items in 19 Dateien**

## Datei-Organisation

Jede Datei ist mit Abschnitts-Headern nach Klasse organisiert:

```yaml
# ============================================================
# SWORD.yml - Alle SWORD Items
# ============================================================

# ==================== KRIEGER SWORD ====================
KRIEGER_SCHWERT_T1:
  base:
    material: IRON_SWORD
    name: '&fRostige Klinge'
    required-class:
      - KRIEGER
    # ...

# ==================== PALADIN SWORD ====================
PALADIN_SCHWERT_T1:
  # ...

# ==================== BOSS SWORD ====================
SCHATTEN_KLINGE:
  # ...
```

## Klassen-Anforderungen

Die meisten Items haben eine `required-class` Eigenschaft zur Beschränkung auf bestimmte Klassen:
- KRIEGER
- MAGIER
- ASSASSINE
- PALADIN
- BOGENSCHÜTZE
- BESCHWÖRER
- SCHAMANE

Items ohne Klassen-Anforderungen (wie Werkzeuge, Verbrauchsgüter und einige Boss-Drops) können von allen Klassen verwendet werden.

## Archiv

Die alte klassenbasierte Verzeichnisstruktur wurde nach `_archiv/classes_old/` verschoben.

## Item-Tier-System

| Tier | Farbe | Level-Bereich | Prefix |
|------|-------|---------------|--------|
| Gewöhnlich | &f (Weiß) | 1-10 | - |
| Ungewöhnlich | &a (Grün) | 11-20 | des Lernenden |
| Selten | &9 (Blau) | 21-35 | der Stärke |
| Episch | &5 (Lila) | 36-50 | des Meisters |
| Legendär | &6 (Gold) | 51-75 | des Champions |
| Mythisch | &d (Rosa) | 76-100 | der Legende |
| Göttlich | &c&l (Rot Bold) | 100+ | der Ewigkeit |
