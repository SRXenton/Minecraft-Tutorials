execute if score _step steps.Test matches 10 run function test:character/new_player_base_values

### Panda Village
## Entities
execute if score _error status.Test matches 0 if score _step steps.Test matches 11 run function test:panda_village/check_dorfvorsteher
execute if score _error status.Test matches 0 if score _step steps.Test matches 12 run function test:panda_village/check_lagerverwalter
execute if score _error status.Test matches 0 if score _step steps.Test matches 13 run function test:panda_village/check_dorfschmied
execute if score _error status.Test matches 0 if score _step steps.Test matches 14 run function test:panda_village/check_farmer_trader1
execute if score _error status.Test matches 0 if score _step steps.Test matches 15 run function test:panda_village/check_wirt
execute if score _error status.Test matches 0 if score _step steps.Test matches 16 run function test:panda_village/check_waechter
execute if score _error status.Test matches 0 if score _step steps.Test matches 20 run function test:misc/check_waechter_interaction


## Dialoge
execute if score _error status.Test matches 0 if score _step steps.Test matches 30 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog1_dorfvorsteher
execute if score _error status.Test matches 0 if score _step steps.Test matches 31 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog40_dorfvorsteher
execute if score _error status.Test matches 0 if score _step steps.Test matches 32 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog60_dorfvorsteher
execute if score _error status.Test matches 0 if score _step steps.Test matches 33 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog70_dorfvorsteher







### Ende
scoreboard players add _step steps.Test 1

execute if score _step steps.Test matches 50.. run function test:misc/test_ok

