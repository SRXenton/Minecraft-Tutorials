# Addiere den Wert 1 dem Fake Spieler _counter_0_to_20 im Scoreboard Global_Variables
scoreboard players add _counter_0_to_20 Global_Variables 1
# Führe aus, wenn der Wert des Fake Spieler _counter_0_to_20 im Scoreboard Global_Variables >= 20,
# setze bei dem Fake Spieler _counter_0_to_20 im Scoreboard Global_Variables den Wert auf 0
execute if score _counter_0_to_20 Global_Variables matches 20.. run scoreboard players set _counter_0_to_20 Global_Variables 0

# Rufe die Function auf
function teleport:teleportation
