## Aubauf Init Doors
# Wenn _counter_0_to_20 in Global_Variables 0 dann:
#   - Setze bei der jedem Marker für die Fackel einen Wall-Fackel mit Ausrichtung Norden
#   - Setzt den _init im Quest_Dorf1_Lagerhaus auf 1

# Wenn _counter_0_to_20 in Global_Variables 3 dann:
#   - Setze bei der jedem Marker für die Fackel einen Air Block
#   - Setzt den _init im Quest_Dorf1_Lagerhaus auf 2

# Führe aus, wenn der Fake Spieler im Scoreboard einen Wert = 0 hat, bei jeder Entity mit dem Tag, den Befehl Setblock mit den Block Werten
execute at @e[tag=dorf1_lagerhaus_marker_rt] if score _counter_0_to_20 Global_Variables matches 0 if score _init Quest_Dorf1_Lagerhaus matches 0 run setblock ~ ~ ~ minecraft:redstone_wall_torch[facing=north] replace
# Führe aus, wenn der Fake Spieler im Scoreboard einen Wert = 0 hat, setze den Fake Spieler im Scoreboard auf 1
execute at @e[tag=dorf1_lagerhaus_marker_rt] if score _counter_0_to_20 Global_Variables matches 0 if score _init Quest_Dorf1_Lagerhaus matches 0 run scoreboard players set _init Quest_Dorf1_Lagerhaus 1

# Führe aus, wenn der Fake Spieler im Scoreboard einen Wert = 3 hat, bei jeder Entity mit dem Tag, den Befehl Setblock
execute at @e[tag=dorf1_lagerhaus_marker_rt] if score _counter_0_to_20 Global_Variables matches 3 if score _init Quest_Dorf1_Lagerhaus matches 1 run setblock ~ ~ ~ air replace
# Führe aus, wenn der Fake Spieler im Scoreboard einen Wert = 0 hat, setze den Fake Spieler im Scoreboard auf 2
execute at @e[tag=dorf1_lagerhaus_marker_rt] if score _counter_0_to_20 Global_Variables matches 3 if score _init Quest_Dorf1_Lagerhaus matches 1 run scoreboard players set _init Quest_Dorf1_Lagerhaus 2
