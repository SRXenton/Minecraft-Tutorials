tellraw @s [{text:"Test: Dialog 80 vom Dorfvorsteher in Panda Village - Start"}]


## Vorbereitung
scoreboard players set _error status.Test 0

function test:steps/reset_scoreboards

scoreboard players operation @s status.Test = @s Quest_Dorfvorsteher

execute store result score _temp10 status.Test if entity @s[tag=spawnpoint]


## Tests

tag @s remove spawnpoint

execute store result score _temp1 status.Test run function quests_dorf1:dialoge/dorfvorsteher/dialog80_dorfvorsteher
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden/Tag nicht gelöscht", color:"red"}]

tag @s add spawnpoint

execute store result score _temp2 status.Test run function quests_dorf1:dialoge/dorfvorsteher/dialog80_dorfvorsteher
execute unless score _temp2 status.Test matches 2 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden/Tag nicht vorhanden", color:"red"}]

dialog clear @s

execute store success score _temp3 status.Test run trigger Quest_Dorfvorsteher add 0
execute unless score _temp3 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Trigger nicht ausgelöst", color:"red"}]


## Aufräumen


tag @s remove spawnpoint

execute if score _temp10 status.Test matches 1 run tag @s add spawnpoint

scoreboard players operation @s Quest_Dorfvorsteher = @s status.Test

function test:steps/reset_scoreboards


tellraw @s [{text:"Test: Dialog 80 vom Dorfvorsteher in Panda Village - Ende"}]
