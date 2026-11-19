
tellraw @s [{text:"Test: Interaction vom Wächter in Panda Village - Start"}]

scoreboard players set _error status.Test 0


function test:steps/reset_scoreboards

execute as @s at @s store result score _temp1 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter,distance=..4]
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Villager NOK"}]


execute as @s at @s store result score _temp2 status.Test if entity @e[type=minecraft:interaction, tag=panda_village, tag=panda_village_waechter_interaction, distance=..4]
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK"}]

function test:steps/reset_scoreboards


tellraw @s [{text:"Test: Interaction vom Wächter in Panda Village - Ende"}]
