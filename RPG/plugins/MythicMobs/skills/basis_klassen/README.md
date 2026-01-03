# Basis Klassen VFX Documentation

## Übersicht

Dieses Dokument beschreibt die visuellen Effekte (VFX) für die Basis-Klassen (Level 1-50) im MinecraftMMO Server. Die VFX wurden als vereinfachte Versionen der aufwändigen Awakened-Klassen-Effekte (Level 50+) entwickelt.

## VFX-Hierarchie

### Basis-Klassen (Lv 1-50)
- **Nur Vanilla Minecraft Partikel**: SWEEP_ATTACK, CRIT, FLAME, SNOWFLAKE, etc.
- **Nur Vanilla Minecraft Sounds**: entity.player.attack.sweep, entity.blaze.shoot, etc.
- **50-70% weniger Partikel** als Awakened-Klassen
- **Kürzere und einfachere Animationen**
- **KEINE ModelEngine VFX Mobs**
- **KEINE Custom Sound Packs**

### Awakened-Klassen (Lv 50+)
- Bestehende aufwändige VFX bleiben unverändert
- ModelEngine VFX Mobs (z.B. VFX_Brutal_Combo_SLASH_LD)
- Custom Sound Packs (z.B. awakened_warrior_sounds)
- Massive Partikel-Mengen
- Komplexe Animationen (Orbitals, Helixes, Particle Rings)

## Erstellte Dateien

### MythicMobs Skills (VFX Definitionen)
Pfad: `RPG/plugins/MythicMobs/skills/basis_klassen/`

1. **krieger_basis_vfx.yml** - Krieger/Warrior Skills
   - Basis_Combo_Attack (3-Hit Combo)
   - Basis_Deep_Wound (Schwerer Einzelschlag)
   - Basis_Empowered_Attack (Dash-Angriff)
   - Basis_Circular_Slash (AoE Spin)
   - Basis_Heavy_Charge (Charge mit Impact)
   - Basis_Fire_Berserker (Feuer-Buff)
   - Basis_Human_Shield (Defensiver Schild)

2. **magier_basis_vfx.yml** - Magier/Mage Skills
   - Basis_Fireball (Einfacher Feuerball)
   - Basis_Ice_Spikes (Eis-Angriff)
   - Basis_Fire_Storm (Feuer AoE)
   - Basis_Blink (Teleport)
   - Basis_Freeze (Eis-Debuff)
   - Basis_Fire_Meteor (Kleiner Meteor)

3. **assassine_basis_vfx.yml** - Assassine/Rogue Skills
   - Basis_Evade (Schneller Dash)
   - Basis_Backstab (Kritischer Angriff von hinten)
   - Basis_Furtive_Strike (Schneller Stich)
   - Basis_Shadow_Veil (Kurze Unsichtbarkeit)

4. **schamane_basis_vfx.yml** - Schamane/Healer Skills
   - Basis_Minor_Healings (Kleine Heilung)
   - Basis_Greater_Healings (Große Heilung)
   - Basis_Weaken (Debuff)
   - Basis_Regen_Ally (Regeneration)

5. **bogenschuetze_basis_vfx.yml** - Bogenschütze/Archer Skills
   - Basis_Power_Shot (Kraftvoller Pfeil)
   - Basis_Arrow_Rain (Pfeilregen)
   - Basis_Evasive_Roll (Ausweich-Rolle)

6. **allgemein_basis_vfx.yml** - Allgemeine Skills
   - Basis_Stun_Effect (Betäubung)
   - Basis_Slow_Effect (Verlangsamung)
   - Basis_Leap_Effect (Sprung)
   - Basis_Impact_Effect (Standard Treffer)

### MythicLib Skill-Verknüpfungen
Pfad: `RPG/plugins/MythicLib/skill/`

- basis_krieger.yml
- basis_magier.yml
- basis_assassine.yml
- basis_schamane.yml
- basis_bogenschuetze.yml
- basis_allgemein.yml

Diese Dateien verknüpfen MMOCore Skill-Namen mit den MythicMobs Skill-IDs und definieren die verwendbaren Modifiers.

## Design-Prinzipien

### 1. Visuelle Klarheit
Spieler sollen sofort den Unterschied zwischen Basis- und Awakened-Klassen sehen:
- Basis: Einfache, klare Effekte
- Awakened: Spektakuläre, komplexe Effekte

### 2. Performance
Basis-Klassen sind performance-freundlicher:
- Weniger Partikel = bessere FPS für Basis-Spieler
- Keine ModelEngine-Entities = weniger Server-Last
- Kürzere Animationen = schnellere Skill-Ausführung

### 3. Vanilla-Only
Alle Basis-VFX verwenden nur Standard Minecraft Ressourcen:
- Funktioniert ohne Resource Packs
- Keine zusätzlichen Downloads nötig
- Kompatibel mit jedem Minecraft-Client

## Partikel-Mengen Vergleich

| Effekt-Typ | Basis | Awakened |
|------------|-------|----------|
| Slash/Hit | 6-10 Partikel | 20-40 Partikel + VFX Mob |
| AoE | 15-25 Partikel | 50-100 Partikel + Rings |
| Dash Trail | 8-12 Partikel | ModelEngine Trail + 30 Partikel |
| Impact | 10-15 Partikel | VFX Mob + Rupture + 40 Partikel |
| Buff Aura | Simple Ring | Orbital VFX Mob + Helixes |

## Beispiel-Vergleich: Combo Attack

### Basis (Krieger - Combo Attack)
```yaml
# 3-Hit Combo mit einfachen Vanilla-Partikeln
- particles{p=sweep_attack;amount=1} @forward
- particles{p=crit;amount=6} @forward
```
- Vanilla Sounds: entity.player.attack.sweep
- 6-10 Partikel pro Hit
- Einfache Delay-basierte Sequenz

### Awakened (Brutal_Combo)
```yaml
# 5-Hit Combo mit Stack-System und VFX Mobs
- summon{type=VFX_Brutal_Combo_SLASH_LD} @forward
- orbital{mob=VFX_Brutal_Combo_SPIN} @self
```
- Custom Sounds: awakened_warrior_sounds
- 20-40 Partikel pro Hit + ModelEngine Mobs
- Komplexe Stack-Mechanik mit Lunges und Levitation
- Ground Ruptures und Particle Rings

## Wichtige Hinweise

1. **Keine Änderungen an Awakened-Skills**: Alle bestehenden Awakened-Skill-Dateien in `SamusDEV/` bleiben unverändert
2. **MMOCore Skills nicht enthalten**: Die Damage-Mechaniken bleiben in MMOCore - diese VFX sind nur visuelle Effekte
3. **Modular verwendbar**: Skills können durch MMOCore-Konfiguration flexibel verschiedenen Klassen zugewiesen werden
4. **Erweiterbar**: Neue Basis-Skills können nach dem gleichen Muster hinzugefügt werden

## Verwendung

Die Skills werden in MMOCore-Klassen über die MythicLib-Verknüpfungen integriert:

```yaml
# Beispiel MMOCore Klasse
COMBO_ATTACK:
    mythicmobs-skill-id: Basis_Combo_Attack
    modifiers:
    - damage
    - count
```

Die VFX werden automatisch ausgeführt, wenn der Skill in MMOCore ausgelöst wird.
