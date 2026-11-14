tellraw @s [{text:"Test: Lagerverwalter in Panda Village - Start"}]

scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards


## Anzahl Entity
execute store result score _temp1 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter]
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl nicht OK", color:"red"}]

## Check Position
execute positioned 1721 66 295 store result score _temp2 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter, distance=..2]
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Entity nicht in Position",color:"red"}]


## Ende
function test:steps/reset_scoreboards

tellraw @s [{text:"Test: Lagerverwalter in Panda Village - Ende"}]
