### Start Punkt des Autotest
### Aufruf in: Manuell

## Scoreboards
scoreboard objectives remove status.Test
scoreboard objectives add status.Test dummy

## Grundwerte setzen
scoreboard players set _start status.Test 1
scoreboard players set _error status.Test 0

scoreboard players set _step status.Test 0
scoreboard players set _player_teleport status.Test 0

## Tag zuweisen
tag @s add Tester

scoreboard objectives setdisplay sidebar status.Test
