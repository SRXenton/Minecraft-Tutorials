
tellraw @s [{text:"Test: Interaction vom Wächter in Panda Village"}]

scoreboard players set _error status.Test 0


scoreboard players set _nw status.Test 0
scoreboard players set _ni status.Test 0


execute as @s at @s store result score _nw status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter,distance=..4]
execute unless score _nw status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Villager NOK"}]


execute as @s at @s store result score _ni status.Test if entity @e[type=minecraft:interaction, tag=panda_village, tag=panda_village_waechter_interaction, distance=..4]
execute unless score _ni status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK"}]
