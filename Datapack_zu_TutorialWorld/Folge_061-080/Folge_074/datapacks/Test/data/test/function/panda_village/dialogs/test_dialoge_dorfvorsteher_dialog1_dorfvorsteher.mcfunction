tellraw @s [{text:"Test: Dialog 1 vom Dorfvorsteher in Panda Village - Start"}]


## Vorbereitung
scoreboard players set _error status.Test 0

scoreboard players set _temp1 status.Test 0
scoreboard players set _temp2 status.Test 0


scoreboard players operation @s status.Test = @s Quest_Dorfvorsteher

## Tests

execute store result score _temp1 status.Test run function quests_dorf1:dialoge/dorfvorsteher/dialog1_dorfvorsteher
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden", color:"red"}]

dialog clear @s

execute store success score _temp2 status.Test run trigger Quest_Dorfvorsteher add 0
execute unless score _temp2 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Trigger nicht ausgelöst", color:"red"}]


## Aufräumen

scoreboard players operation @s Quest_Dorfvorsteher = @s status.Test

scoreboard players set _temp1 status.Test 0
scoreboard players set _temp2 status.Test 0

tellraw @s [{text:"Test: Dialog 1 vom Dorfvorsteher in Panda Village - Ende"}]
