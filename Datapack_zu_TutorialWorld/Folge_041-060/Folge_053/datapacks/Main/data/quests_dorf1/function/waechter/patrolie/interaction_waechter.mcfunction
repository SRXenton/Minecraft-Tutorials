execute as @e[tag=panda_village_waechter_interaction] at @s on target run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, komm bitte später wieder",color:"yellow"}]

execute as @e[tag=panda_village_waechter_interaction] run data remove entity @s attack
execute as @e[tag=panda_village_waechter_interaction] run data remove entity @s interaction
