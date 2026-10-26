tellraw @s [{text:"Test: Lagerverwalter in Panda Village - Start"}]

scoreboard players set _error status.Test 0
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0

## Anzahl
execute store result score _t1 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfschmied]
execute unless score _t1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl nicht OK", color:"red"}]

## Position
execute positioned 1779 66 235 store result score _t2 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfschmied, distance=..2]
execute unless score _t2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Nicht in Position", color:"red"}]


## Ende
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0


tellraw @s [{text:"Test: Lagerverwalter in Panda Village - Ende"}]
