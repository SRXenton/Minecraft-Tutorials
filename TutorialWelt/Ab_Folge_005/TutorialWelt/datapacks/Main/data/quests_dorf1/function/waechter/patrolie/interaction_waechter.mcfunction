### Wird aufgerufen aus: patrolie/switch.mcfunction

## Beim Rechtisklick auf jeder interaction mit dem Tag, wird ein tellraw an die entity ausgeführt, die im target steht
execute as @e[tag=panda_village_waechter_interaction] at @s run function quests_dorf1:waechter/patrolie/interaction_waechter_sub
#tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, komm bitte später wieder",color:"yellow"}]

## Entfernt bei jeder entity mit dem Tag den attack und die interaction
# execute as @e[tag=panda_village_waechter_interaction] run data remove entity @s attack
# execute as @e[tag=panda_village_waechter_interaction] run data remove entity @s interaction
