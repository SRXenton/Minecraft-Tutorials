tellraw @s [{text:"Test: Trader Farmer in Panda Village - Start"}]

scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

## Anzahl
execute store result score _temp1 status.Test if entity @e[type=minecraft:villager, tag=E_S.Vendors, tag=E_S.Vendors_villagers, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_villager]
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Trader NOK", color:"red"}]

execute store result score _temp2 status.Test if entity @e[type=minecraft:interaction, tag=E_S.Vendors, tag=E_S.Vendors_interactions, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_interaction]
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Interaction NOK", color:"red"}]

## Position
execute positioned 1742.5 65.0 204.5 store result score _temp3 status.Test if entity @e[type=minecraft:villager, tag=E_S.Vendors, tag=E_S.Vendors_villagers, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_villager, distance=..2]
execute unless score _temp3 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Villager nicht in position", color:"red"}]

execute positioned 1742.5 65.0 204.5 store result score _temp4 status.Test if entity @e[type=minecraft:interaction, tag=E_S.Vendors, tag=E_S.Vendors_interactions, tag=E_S.Vendors_Panda_Village, tag=E_S.Vendors_Panda_Village_interaction, distance=..2]
execute unless score _temp4 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Interaction nicht in position", color:"red"}]

## Ende
function test:steps/reset_scoreboards


tellraw @s [{text:"Test: Trader Farmer in Panda Village - Ende"}]
