tellraw @s [{text:"Test: Dialog vom Lagerverwalter in Panda Village - Start"}]

## Vorbereitung
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

scoreboard players operation @s status.Test = @s Quest_Dorfvorsteher

## Test

scoreboard players set @s Quest_Dorfvorsteher 0

execute store result score _temp1 status.Test run function quests_dorf1:dialoge/lagerverwalter/dialog_lagerverwalter
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden", color:"red"}]



## Aufräumen
scoreboard players operation @s Quest_Dorfvorsteher = @s status.Test

function test:steps/reset_scoreboards

tellraw @s [{text:"Test: Dialog vom Lagerverwalter in Panda Village - Ende"}]
