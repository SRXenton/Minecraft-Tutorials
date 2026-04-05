## Spielererkennung

## Initializieren
# Init Türen wenn kein Spieler mehr im Dungeon, der _init Scoreboard Wert 0 oder 1 ist, in einem Bereich beginnend beim Marker Border im Delta von X,Y,Z
# Führe aus, bei jeder Entity mit dem Tag, und wenn der Scoreboard Wert >= 0 und <= 1, und wenn nicht jede Entity im Bereich (Delta X,Y,Z), rufe die function auf
execute at @e[tag=dorf1_lagerhaus_marker_border] if score _init Quest_Dorf1_Lagerhaus matches 0..1 unless entity @a[dx=10,dy=9,dz=18] run function quests_dorf1:dorfvorsteher/lagerhaus/init/init_doors

# Init Scoreboard, wenn ein Spieler im Eingangsbereich ist, der Dungeon an den Türen Betreten wurde, und sich kein Spieler in einem Bereich beginnend beim Marker Border im Delta von X,Y,Z befindet
# Führe aus, bei jeder Entity mit dem Tag, und wenn der Scoreboard Wert >= 0 und <= 1, und wenn nicht jede Entity im Bereich (Delta X,Y,Z), rufe die function auf
execute at @e[tag=dorf1_lagerhaus_marker_border] \
    unless entity @a[dx=10,dy=9,dz=16] \
        if score _init Quest_Dorf1_Lagerhaus matches 10.. \
            at @e[tag=dorf1_lagerhaus_marker_zaun] \
                if entity @a[dx=-4,dy=5] \
                    run function quests_dorf1:dorfvorsteher/lagerhaus/init/init_scoreboard

                    
## Aktionen
# Erkenne den Spieler der durch das Tor am Zaun gehen will, in dem Bereich (Delta X,Y) beginnend beim Marker, wenn er nicht den Scoreboard Wert von 50 hat, dann führe die Function aus
# Führe aus, bei der Entity mit dem Tag, als die jeder Spieler im Bereich (Delta X,Y) als der Spieler, wenn nicht der Spieler einen Scoreboard Wert = 50 hat, die function
execute at @e[tag=dorf1_lagerhaus_marker_zaun] as @a[dx=-4,dy=5] at @s unless entity @s[scores={Quest_Dorfvorsteher=50}] run function quests_dorf1:dorfvorsteher/lagerhaus/entry/not_permitted

# Erkenne den Spieler der durch die Tür gehen will, in dem Bereich (Delta X,Y) beginnend beim Marker, wenn er nicht den Scoreboard Wert >= 10 und <= 20 hat hat, dann führe die Function aus
# Führe aus, bei der Entity mit dem Tag, als die jeder Spieler im Bereich (Delta X,Y) als der Spieler, wenn nicht der Spieler einen Scoreboard Wert = 50 hat, die function
execute at @e[tag=dorf1_lagerhaus_marker_tuer] as @a[dx=-4,dy=5] as @s unless entity @s[scores={Quest_Dorf1_Lagerhaus=10..20}] run function quests_dorf1:dorfvorsteher/lagerhaus/entry/permitted

# Erkenne den Spieler an der Falltür, in dem Bereich (Distanz - bis 2) beginnend beim Marker, wenn der Mob noch nicht gespawnt wurde, dann führe die Function aus
# Führe aus, bei der Entity mit dem Tag, wenn der nächste Spieler in einer Entfernung <= 2, wenn nicht der Fake Spieler einen Scoreboard Wert = 1 hat, die function
execute at @e[tag=dorf1_lagerhaus_marker_ft] if entity @p[distance=..2] unless score _isBoss Quest_Dorf1_Lagerhaus matches 1 run function quests_dorf1:dorfvorsteher/lagerhaus/mob/mob
