execute if score _step steps.Test matches 1 run function test:character/new_player_base_values
#execute if score _error status.Test matches 0 .......





scoreboard players add _step steps.Test 1

execute if score _step steps.Test matches 10.. run function test:misc/test_ok

