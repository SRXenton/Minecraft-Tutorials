execute if score _step steps.Test matches 1 run function test:first





scoreboard players add _step steps.Test 1

execute if score _step steps.Test matches 10.. run tellraw @s "Fertig"
execute if score _step steps.Test matches 10.. run tag @s remove Tester
execute if score _step steps.Test matches 10.. run scoreboard players set _start status.Test 0
