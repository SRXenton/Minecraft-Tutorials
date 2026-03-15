## Aufruf im Commandblock beim Lagerhaus

# Detect Player
function quests_dorf1:lagerhaus/detect_player

# Loot, Erkennung Bossmob gestorben
function quests_dorf1:lagerhaus/loot/loot

# Wird ausgeführt, wenn der Zaun Marker Fehlt, der Marker ist im selben Chunk
# Führe aus, an Position, wenn nicht jede Entity, mit dem Tag, in der Distanz <= 10, die Function
execute positioned ~ ~ ~ unless entity @e[tag=dorf1_lagerhaus_marker_zaun, distance=..10] run function quests_dorf1:lagerhaus/set_marker


## Debug
#scoreboard objectives setdisplay sidebar Quest_Dorf1_Lagerhaus
#execute at @e[tag=dorf1_lagerhaus_marker] run particle cloud ~ ~ ~