tellraw @s [{text:"Test: Trader Farmer in Panda Village"}]

scoreboard players set _error status.Test 0

execute store result score _temp status.Test if entity @e[type=minecraft:villager, tag=E_S.Vendors, tag=E_S.Vendors_villagers, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_villager]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Trader NOK"}]

execute store result score _temp status.Test if entity @e[type=minecraft:interaction, tag=E_S.Vendors, tag=E_S.Vendors_interactions, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_interaction]
execute unless score _temp status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK"}]

execute if score _error status.Test matches 0 positioned 1742.5 65.0 204.5 unless entity @e[type=minecraft:villager, tag=E_S.Vendors, tag=E_S.Vendors_villagers, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_villager, distance=..2] run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Villager nicht in position"}]

execute if score _error status.Test matches 0 positioned 1742.5 65.0 204.5 unless entity @e[type=minecraft:interaction, tag=E_S.Vendors, tag=E_S.Vendors_interactions, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_interaction, distance=..2] run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Interaction nicht in position"}]
