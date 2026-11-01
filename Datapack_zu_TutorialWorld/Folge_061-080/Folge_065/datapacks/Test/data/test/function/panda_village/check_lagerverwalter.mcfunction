tellraw @s [{text:"Test: Lagerverwalter in Panda Village"}]

scoreboard players set _error status.Test 0

# quest_marker:set_marker
execute store result score _temp status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"1"}]

execute if score _error status.Test matches 0 positioned 1721 66 295 unless entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter, distance=..2] run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"2"}]
