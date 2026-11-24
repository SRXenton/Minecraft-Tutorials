tellraw @s [{text:"Test: action vom Lagerverwalter in Panda Village - Start"}]

## Vorbereitung
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

scoreboard players operation @s status.Test = @s Quest_Dorfvorsteher

## Test

clear @s

execute store result score _temp1 status.Test run function quests_dorf1:dialoge/lagerverwalter/action_lagerverwalter
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden", color:"red"}]

dialog clear @s

execute store result score _temp2 status.Test run clear @s minecraft:stick[custom_data={"tag":"kfdds"}] 0
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Custom Stick nicht verhanden", color:"red"}]

execute store result score _temp3 status.Test if score @s Quest_Dorfvorsteher matches 31
execute unless score _temp3 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Custom Item nicht im Inventar", color:"red"}]


## Aufräumen
scoreboard players operation @s Quest_Dorfvorsteher = @s status.Test

clear @s

function test:steps/reset_scoreboards

tellraw @s [{text:"Test: action vom Lagerverwalter in Panda Village - Ende"}]
