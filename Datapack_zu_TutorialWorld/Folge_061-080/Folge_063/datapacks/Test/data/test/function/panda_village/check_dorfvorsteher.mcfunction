tellraw @s [{text:"Test: Dorfvorsteher in Panda Village"}]


# quest_marker:set_marker
execute store result score _temp status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfvorsteher]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"1"}]

execute if score _error status.Test matches 0 positioned 1742.5 65.0 258.5 unless entity @e[type=minecraft:villager, tag=quest_npc, tag=dorf1, tag=dorf1_dorfvorsteher, distance=..2] run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"2"}]

execute if score _error status.Test matches 0 at @e[type=villager, tag=dorf1, tag=dorf1_dorfvorsteher, tag=quest_npc] positioned ~ ~2.8 ~ \
    unless entity @e[type=block_display, tag=quest_marker, distance=..1] run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"3"}]

execute if score _error status.Test matches 0 at @e[type=villager, tag=dorf1, tag=dorf1_dorfvorsteher, tag=quest_npc] positioned ~ ~2.5 ~ \
    unless entity @e[type=block_display, tag=quest_marker, distance=..1] run function test:misc/test_nok
execute if score _error status.Test matches 1 run tellraw @s [{text:"4"}]
