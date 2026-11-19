tellraw @s [{text:"Test: Set_marker vom Dungeon Lagerhaus in Panda Village - Start"}]

## Vorbereiten

scoreboard players set _error status.Test 0


function test:steps/reset_scoreboards

## Tests

execute store result score _temp1 status.Test run function quests_dorf1:dorfvorsteher/lagerhaus/set_marker
execute unless score _temp1 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Function konnte nicht aufgerufen werden", color:"red"}]

execute store result score _temp2 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker]
execute unless score _temp2 status.Test matches 8 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"Anzahl Marker stimmt nicht", color:"red"}]

execute positioned 1862 65 245 store result score _temp3 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_zaun]
execute unless score _temp3 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"1 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1862 65 240 store result score _temp4 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_tuer]
execute unless score _temp4 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"2 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1861 66 231 store result score _temp5 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_ft]
execute unless score _temp5 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"3 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1855 61 227 store result score _temp6 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_border]
execute unless score _temp6 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"4 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1860 62 236 store result score _temp7 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_mob_boss]
execute unless score _temp7 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"5 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1860 64 239 store result score _temp8 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_rt, distance=..0.1]
execute unless score _temp8 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"6 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1861 64 239 store result score _temp9 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_rt, distance=..0.1]
execute unless score _temp9 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"7 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]

execute positioned 1861 66 231 store result score _temp10 status.Test if entity @e[type=minecraft:marker, tag=dorf1_lagerhaus_marker_rt, distance=..0.1]
execute unless score _temp10 status.Test matches 1 run function test:misc/test_nok
execute if score _error status.Test matches 1 run return run tellraw @s [{text:"8 Anzahl Marker stimmt nicht, oder nicht in position", color:"red"}]


## Aufräumen

function test:steps/reset_scoreboards

tellraw @s [{text:"Test: Set_marker vom Dungeon Lagerhaus in Panda Village - Ende"}]
