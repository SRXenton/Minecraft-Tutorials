execute as @a[scores={SpawnPoint=1..}] run function respawn:tag_remove

execute as @a[scores={SpawnPoint=1}] run tag @s add spawnpoint_panda_village
execute as @a[scores={SpawnPoint=2}] run tag @s add spawnpoint_dorf2

execute as @a[scores={SpawnPoint=1..}] run scoreboard players set @s SpawnPoint 0