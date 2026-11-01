tellraw @s [{text:"Test: Wächter in Panda Village - Start"}]

scoreboard players set _error status.Test 0
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0


## Entity Anzahl Check
execute store result score _t1 status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter]
execute unless score _t1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Villager NOK", color:"red"}]

## Teleport Tester 2 vor den Wächter
execute at @n[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter] positioned ^ ^ ^2 \
    run teleport @s ~ ~ ~ facing entity @n[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter]

## Ist unter dem Wächter der entsprechende Block
execute store result score _t2 status.Test at @n[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter] if block ~ -61 ~ minecraft:magenta_glazed_terracotta
execute unless score _t2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Pfad nicht unter Villager", color:"red"}]


## Ende
scoreboard players set _t1 status.Test 0
scoreboard players set _t2 status.Test 0


tellraw @s [{text:"Test: Wächter in Panda Village - Ende"}]
