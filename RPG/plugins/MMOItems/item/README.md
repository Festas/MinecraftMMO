# MMOItems Klassenbasierte Struktur

## Übersicht
Dieses Item-System ist auf die 6 Spielerklassen ausgerichtet.

## Ordnerstruktur

| Ordner | Beschreibung |
|--------|--------------|
| `gemeinsam/` | Items für alle Klassen (Basis-Waffen, Verbrauchsgüter, Materialien) |
| `krieger/` | Schwerter, Äxte, Hämmer, Schwere Rüstung |
| `magier/` | Stäbe, Zauberstäbe, Orbs, Roben |
| `assassine/` | Dolche, Kurzschwerter, Leichte Rüstung |
| `bogenschuetze/` | Bögen, Armbrüste, Jäger-Ausrüstung |
| `schamane/` | Totems, Naturstäbe, Naturverbundene Rüstung |
| `beschwoerer/` | Beschwörungsfokus, Seelensteine, Ritualistenrüstung |
| `legendaer/` | Awakened/Göttliche Items für alle Klassen |
| `_archiv/` | Alte Items (nicht mehr aktiv) |

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

## Datei-Namenskonvention
- `waffen.yml` - Alle Waffen der Klasse
- `ruestung.yml` - Alle Rüstungsteile der Klasse
- `schmuck.yml` - Ringe, Amulette, Accessoires
- `offhand.yml` - Nebenhand-Items (Schilde, Orbs, etc.)
