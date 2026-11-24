tellraw @s [{text:"Test: Dialog vom Dorfwächter in Panda Village - Start"}]

## Vorbereitung
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

scoreboard players operation @s status.Test = @s Quest.Panda_Village.Waechter

## Test

scoreboard players set @s Quest.Panda_Village.Waechter 123456

execute store result score _temp1 status.Test run function quests_dorf1:dialoge/dorfschmied/dialog_dorfschmied
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden", color:"red"}]

execute store result score _temp2 status.Test if score @s Quest.Panda_Village.Waechter matches 123456
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Scoreboardwert hat sich geändert", color:"red"}]


## Aufräumen
scoreboard players operation @s Quest.Panda_Village.Waechter = @s status.Test

function test:steps/reset_scoreboards

tellraw @s [{text:"Test: Dialog vom Dorfwächter in Panda Village - Ende"}]
