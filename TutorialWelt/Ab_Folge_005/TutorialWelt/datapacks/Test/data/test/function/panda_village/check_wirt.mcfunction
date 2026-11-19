tellraw @s [{text:"Test: Wirt in Panda Village - Start"}]

## Vorbereitung
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

## Entity check
execute store result score _temp1 status.Test if entity @e[type=minecraft:villager, tag=gasthaus, tag=gasthaus_wirt, tag=gasthaus_wirt_panda_village]
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Trader NOK", color:"red"}]

execute store result score _temp2 status.Test if entity @e[type=minecraft:interaction, tag=gasthaus, tag=gasthaus_interaction_panda_village]
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK", color:"red"}]

## Entity Positionscheck
execute positioned 1782.5 65.0 271.5 store result score _temp3 status.Test if entity @e[type=minecraft:villager, tag=gasthaus, tag=gasthaus_wirt, tag=gasthaus_wirt_panda_village, distance=..2]
execute unless score _temp3 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Villager nicht in position", color:"red"}]

execute positioned 1782.5 65.0 271.5 store result score _temp4 status.Test if entity @e[type=minecraft:interaction, tag=gasthaus, tag=gasthaus_interaction_panda_village, distance=..2]
execute unless score _temp4 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Interaction nicht in position", color:"red"}]


## Ende
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards


tellraw @s [{text:"Test: Wirt in Panda Village - Start"}]
