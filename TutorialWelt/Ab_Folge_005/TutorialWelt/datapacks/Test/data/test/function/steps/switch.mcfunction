execute if score _step steps.Test matches 10 run function test:character/new_player_base_values
execute if score _error status.Test matches 0 if score _step steps.Test matches 11 run function test:panda_village/check_dorfvorsteher
execute if score _error status.Test matches 0 if score _step steps.Test matches 12 run function test:panda_village/check_lagerverwalter
execute if score _error status.Test matches 0 if score _step steps.Test matches 13 run function test:panda_village/check_dorfschmied
execute if score _error status.Test matches 0 if score _step steps.Test matches 14 run function test:panda_village/check_farmer_trader1
execute if score _error status.Test matches 0 if score _step steps.Test matches 15 run function test:panda_village/check_wirt
execute if score _error status.Test matches 0 if score _step steps.Test matches 16 run function test:panda_village/check_waechter
execute if score _error status.Test matches 0 if score _step steps.Test matches 20 run function test:misc/check_waechter_interaction





scoreboard players add _step steps.Test 1

execute if score _step steps.Test matches 50.. run function test:misc/test_ok

