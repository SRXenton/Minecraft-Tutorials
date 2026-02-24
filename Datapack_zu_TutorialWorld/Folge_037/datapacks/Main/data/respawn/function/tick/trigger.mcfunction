# Führe aus, als jeder Spieler, mit dem Scoreboardwerten, die Function
execute as @a[scores={SpawnPoint=1..}] run function respawn:tag_remove

# Führe aus, als jeder Spieler, mit dem Scoreboardwerten, Tag addieren an sich selbst
execute as @a[scores={SpawnPoint=1}] run tag @s add spawnpoint_panda_village
execute as @a[scores={SpawnPoint=2}] run tag @s add spawnpoint_dorf2

# Führe aus, als jeder Spieler, mit dem Scoreboardwerten, im Scoreboard bei sich selbst den Wert = 0
execute as @a[scores={SpawnPoint=1..}] run scoreboard players set @s SpawnPoint 0