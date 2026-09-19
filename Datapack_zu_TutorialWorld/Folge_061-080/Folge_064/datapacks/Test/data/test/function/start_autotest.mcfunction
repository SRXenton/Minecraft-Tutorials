scoreboard objectives remove status.Test
scoreboard objectives add status.Test dummy

scoreboard objectives remove steps.Test
scoreboard objectives add steps.Test dummy

scoreboard players set _start status.Test 1
scoreboard players set _error status.Test 0

scoreboard players set _step steps.Test 0

tag @s add Tester
