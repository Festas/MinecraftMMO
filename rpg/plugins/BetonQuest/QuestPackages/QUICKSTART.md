# Schnellstart-Anleitung - Düsterwall Quest-System

## 🚀 Schnelle Einrichtung (15 Minuten)

### Schritt 1: NPCs erstellen (5 Min)
```
/npc create König_Nitwit
/npc create Wachhauptmann_Thorvald
/npc create Schmiedemeister_Grimjaw
/npc create Kräuterfrau_Morgana
/npc create Jägermeister_Fenris
/npc create Händler_Berthold
/npc create Wirt_Hammund
```

Positioniere die NPCs an geeigneten Orten in deiner Stadt.

### Schritt 2: NPC-IDs notieren (2 Min)
```
/npc list
```
Notiere die IDs der 7 NPCs.

### Schritt 3: package.yml anpassen (2 Min)
Bearbeite: `duesterwall/package.yml`
```yaml
npcs:
  koenig_nitwit: "DEINE_ID"
  wachhauptmann_thorvald: "DEINE_ID"
  # ... usw
```

### Schritt 4: Koordinaten setzen (3 Min)
Markiere wichtige Orte und notiere Koordinaten (X Y Z):

**Hauptquest:**
- Stadttor (Thorvald): _____________________
- Dunkler Wald (Quest 6): _____________________

**Nebenquests:**
- Wald-Position (Torin): _____________________
- Keller (Rattennest): _____________________

Trage sie in die entsprechenden Dateien ein.

### Schritt 5: Conversations zuweisen (3 Min)
```
/npc select König_Nitwit
/npc assignment --set duesterwall.koenig_nitwit

/npc select Wachhauptmann_Thorvald
/npc assignment --set duesterwall.wachhauptmann_thorvald

/npc select Schmiedemeister_Grimjaw
/npc assignment --set duesterwall.schmiedemeister_grimjaw

/npc select Kräuterfrau_Morgana
/npc assignment --set duesterwall.kraeuterfrau_morgana

/npc select Jägermeister_Fenris
/npc assignment --set duesterwall.jaegermeister_fenris

/npc select Händler_Berthold
/npc assignment --set duesterwall.haendler_berthold

/npc select Wirt_Hammund
/npc assignment --set duesterwall.wirt_hammund
```

### Schritt 6: BetonQuest neu laden
```
/bq reload
```

### Schritt 7: Testen
Rechtsklick auf Wachhauptmann Thorvald am Stadttor → Quest sollte starten!

---

## 📋 Wichtige Befehle

### Admin-Befehle
```bash
/bq reload                          # System neu laden
/bq list <Spieler>                  # Quests eines Spielers anzeigen
/bq compass                         # Compass-Tool erhalten
/bq event <Spieler> <Event>        # Event manuell auslösen
/bq condition <Spieler> <Condition> # Condition testen
/bq tag <Spieler> add <Tag>        # Tag hinzufügen
/bq objectives list <Spieler>      # Objectives anzeigen
```

### Testen einer Quest
```bash
# Quest starten
/bq event Spieler duesterwall.hauptquest.kapitel_01_das_erwachen.quest1_start

# Quest-Status prüfen
/bq list Spieler

# Objectives prüfen
/bq objectives list Spieler

# Tag setzen (für Tests)
/bq tag Spieler add quest1_complete
```

---

## 🔍 Häufige Anpassungen

### Belohnungen ändern
Bearbeite die Events in den Quest-Dateien:
```yaml
events:
  belohnung: "point playerpoints 500,experience 1000"
  # Ändere Gold und XP nach Bedarf
```

### Kill-Counts anpassen
```yaml
objectives:
  zombies_toeten: "mobkill ZOMBIE 20"
  # Ändere Anzahl nach Bedarf
```

### Level-Requirements ändern
```yaml
conditions:
  ist_level_10: "level 15"  # Von 10 auf 15
```

### Täglichen Reset einrichten
In BetonQuest `config.yml`:
```yaml
schedules:
  daily_reset:
    time: "04:00"
    events:
      - "duesterwall.daily.erze_fuer_grimjaw.daily_erze_reset"
      - "duesterwall.daily.kraeuter_fuer_morgana.daily_kraeuter_reset"
      - "duesterwall.daily.monster_vor_den_toren.daily_monster_reset"
```

---

## 🎯 Quest-Übersicht

### Hauptquest (7 Quests)
1. Das Erwachen → Thorvald
2. Audienz beim König → König Nitwit
3. Erste Prüfung → 5 Zombies töten
4. Der Schmied → 10 Eisenerze
5. Gerüchte im Wind → 3 NPCs
6. Der dunkle Wald → Location + Kampf
7. Bericht an den König → Finale

### Nebenquests (2 Quests)
- Der vermisste Sohn (Hammund)
- Rattenproblem (Berthold)

### Daily Quests (3 Quests, Level 5+)
- Erze für Grimjaw
- Kräuter für Morgana
- Monster vor den Toren

### Slayer (3 Kategorien x 5 Tiers)
- Untoten-Jäger (Level 10+)
- Spinnen-Jäger (Level 10+)
- Dämonen-Jäger (Level 15+)

---

## 🐛 Problemlösung

### "Conversation not found"
→ Prüfe NPC Assignment: `/npc assignment`
→ Reload: `/bq reload`

### "Objective not found"
→ Prüfe Syntax in YAML-Dateien
→ Logs: `plugins/BetonQuest/logs/`

### Quest startet nicht
→ Prüfe Conditions
→ Test: `/bq condition Spieler CONDITION`

### Daily Reset funktioniert nicht
→ Prüfe `config.yml` schedules
→ Test manuell: `/bq event Spieler duesterwall.daily.QUEST.daily_QUEST_reset`

---

## 📝 Erweitert das System

### Neues Kapitel hinzufügen
1. Erstelle: `hauptquest/kapitel_02_TITEL.yml`
2. Kopiere Struktur von Kapitel 1
3. Passe Events und Objectives an
4. Verlinke in vorherigem Kapitel

### Neuer NPC
1. Erstelle: `npcs/NEUER_NPC.yml`
2. Conversation mit player/NPC options
3. Events, conditions, objectives
4. NPC ID in `package.yml` eintragen
5. Assignment setzen

### Neue Daily Quest
1. Erstelle: `daily/NEUE_QUEST.yml`
2. Füge Reset-Event hinzu
3. Condition für `!QUEST_complete_heute`
4. Füge zu Schedule hinzu

---

## ✅ Checkliste vor Go-Live

- [ ] Alle 7 NPCs erstellt und positioniert
- [ ] NPC-IDs in `package.yml` eingetragen
- [ ] Koordinaten angepasst
- [ ] Conversations zugewiesen
- [ ] Daily Reset konfiguriert
- [ ] System mit Testaccount getestet
- [ ] Logs auf Fehler geprüft
- [ ] Backup erstellt

---

## 🎮 Spieler-Anleitung (Für Announcements)

**Willkommen in Düsterwall!**

🏰 **Starte deine Reise am Stadttor** - Sprich mit Wachhauptmann Thorvald

📜 **Hauptquest:** 7 epische Quests erwarten dich
🎭 **Nebenquests:** Hilf den Bürgern von Düsterwall
⏰ **Daily Quests:** Tägliche Aufgaben ab Level 5
⚔️ **Slayer-System:** Werde zum legendären Jäger!

**Belohnungen:** Gold, XP, Ausrüstung, Titel

*Die Leere bedroht das Land. Bist du bereit, Düsterwall zu retten?*

---

Erstellt mit ❤️ für das MinecraftMMO-Projekt
