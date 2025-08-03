execute unless entity @e[tag=teleport_stone_dorf1] if score _in_work Global_Variables matches 0 run summon minecraft:interaction 1743 65 268 {height:4.0f, width:1.5f, Tags:["teleport_stone", "teleport_stone_dorf1"]}

execute as @e[tag=teleport_stone_dorf1, type=minecraft:interaction] on target run tell @a "Geklicket"
execute as @e[tag=teleport_stone_dorf1, type=minecraft:interaction] on attacker run tell @a "Angegriffen"

data remove entity @e[tag=teleport_stone_dorf1, type=minecraft:interaction,limit=1] interaction
data remove entity @e[tag=teleport_stone_dorf1, type=minecraft:interaction,limit=1] attack