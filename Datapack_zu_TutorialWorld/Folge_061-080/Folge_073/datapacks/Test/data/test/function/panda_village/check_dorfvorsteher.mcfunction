tellraw @s [{text:"Test: Dorfvorsteher in Panda Village - Start"}]

scoreboard players set _error status.Test 0
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0
scoreboard players set _t3 status.Test 0


## Anzahl
execute store result score _t1 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfvorsteher]
execute unless score _t1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl nicht OK", color:"red"}]

## Position
execute positioned 1742.5 65.0 258.5 store result score _t2 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfvorsteher, distance=..2]
execute unless score _t2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Nicht in Position", color:"red"}]

## Marker
execute at @e[type=villager, tag=dorf1, tag=dorf1_dorfvorsteher, tag=quest_npc] positioned ~ ~2.8 ~ store result score _t3 status.Test if entity @e[type=block_display, tag=quest_marker, distance=..1]
execute unless score _t3 status.Test matches 2 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Ein Teil das Markers fehlt", color:"red"}]


## Ende
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0
scoreboard players set _t3 status.Test 0

tellraw @s [{text:"Test: Dorfvorsteher in Panda Village - Ende"}]
