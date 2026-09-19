tellraw @s [{text:"Test: Wächter in Panda Village"}]

scoreboard players set _error status.Test 0

execute store result score _temp status.Test if entity @e[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Villager NOK"}]

execute at @n[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter] positioned ^ ^ ^2 \
    run teleport @s ~ ~ ~ facing entity @n[type=minecraft:villager, tag=quest_npc, tag=panda_village, tag=panda_village_waechter]

# execute store result score _temp status.Test if entity @e[type=minecraft:interaction, tag=gasthaus, tag=gasthaus_interaction_panda_village]
# execute unless score _temp status.Test matches 1 run function test:misc/test_nok
# execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK"}]

# execute if score _error status.Test matches 0 positioned 1782.5 65.0 271.5 unless entity @e[type=minecraft:villager, tag=gasthaus, tag=gasthaus_wirt, tag=gasthaus_wirt_panda_village, distance=..2] run function test:misc/test_nok
# execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Villager nicht in position"}]

# execute if score _error status.Test matches 0 positioned 1782.5 65.0 271.5 unless entity @e[type=minecraft:interaction, tag=gasthaus, tag=gasthaus_interaction_panda_village, distance=..2] run function test:misc/test_nok
# execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Interaction nicht in position"}]
