tellraw @s [{text:"Test: Lagerverwalter in Panda Village"}]


# quest_marker:set_marker
execute store result score _temp status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"1"}]

execute if score _error status.Test matches 0 positioned 1721 66 295 unless entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_lagerverwalter, distance=..2] run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"2"}]

# execute if score _error status.Test matches 0 at @e[type=villager, tag=dorf1, tag=dorf1_lagerverwalter, tag=quest_npc] positioned ~ ~2.8 ~ \
#     unless entity @e[type=block_display, tag=quest_marker, distance=..1] run function test:misc/test_nok
# execute if score _error status.Test matches 1 run tellraw @s [{text:"3"}]

# execute if score _error status.Test matches 0 at @e[type=villager, tag=dorf1, tag=dorf1_lagerverwalter, tag=quest_npc] positioned ~ ~2.5 ~ \
#     unless entity @e[type=block_display, tag=quest_marker, distance=..1] run function test:misc/test_nok
# execute if score _error status.Test matches 1 run tellraw @s [{text:"4"}]
