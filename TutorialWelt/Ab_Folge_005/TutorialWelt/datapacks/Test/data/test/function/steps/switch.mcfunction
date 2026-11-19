### Verteiler
### Aufruf in: Test: steps/start.mcfunction

execute if score _step status.Test matches 10 run function test:character/new_player_base_values

### Panda Village
## Entities
execute if score _error status.Test matches 0 if score _step status.Test matches 11 run function test:panda_village/check_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 12 run function test:panda_village/check_lagerverwalter
execute if score _error status.Test matches 0 if score _step status.Test matches 13 run function test:panda_village/check_dorfschmied
execute if score _error status.Test matches 0 if score _step status.Test matches 14 run function test:panda_village/check_farmer_trader1
execute if score _error status.Test matches 0 if score _step status.Test matches 15 run function test:panda_village/check_wirt
execute if score _error status.Test matches 0 if score _step status.Test matches 16 run function test:panda_village/check_waechter
execute if score _error status.Test matches 0 if score _step status.Test matches 20 run function test:misc/check_waechter_interaction


## Dialoge
execute if score _error status.Test matches 0 if score _step status.Test matches 30 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog1_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 31 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog40_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 32 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog60_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 33 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog70_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 34 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog80_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 35 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog90_dorfvorsteher
execute if score _error status.Test matches 0 if score _step status.Test matches 36 run function test:panda_village/dialogs/test_dialoge_dorfvorsteher_dialog100_dorfvorsteher



execute if score _error status.Test matches 0 if score _step status.Test matches 60 run function test:panda_village/dialogs/test_dialoge_dorfschmied_action_dorfschmied
execute if score _error status.Test matches 0 if score _step status.Test matches 61 run function test:panda_village/dialogs/test_dialoge_dorfschmied_dialog10_dorfschmied
execute if score _error status.Test matches 0 if score _step status.Test matches 62 run function test:panda_village/dialogs/test_dialoge_dorfschmied_dialog_dorfschmied

execute if score _error status.Test matches 0 if score _step status.Test matches 65 run function test:panda_village/dialogs/test_dialoge_lagerverwalter_action_lagerverwalter
execute if score _error status.Test matches 0 if score _step status.Test matches 66 run function test:panda_village/dialogs/test_dialoge_lagerverwalter_dialog20_lagerverwalter
execute if score _error status.Test matches 0 if score _step status.Test matches 67 run function test:panda_village/dialogs/test_dialoge_lagerverwalter_dialog_lagerverwalter

execute if score _error status.Test matches 0 if score _step status.Test matches 70 run function test:panda_village/dialogs/test_dialoge_dorfwaechter_dialog0_dorfwaechter
execute if score _error status.Test matches 0 if score _step status.Test matches 79 run function test:panda_village/dialogs/test_dialoge_dorfwaechter_dialog_dorfwaechter



## Dungeon Lagerhaus

execute if score _error status.Test matches 0 if score _step status.Test matches 90 run scoreboard players set _player_teleport status.Test 0
execute if score _error status.Test matches 0 if score _step status.Test matches 90 run scoreboard players set _start status.Test 2

### Ende
scoreboard players add _step status.Test 1

execute if score _step status.Test matches 100.. run function test:misc/test_ok

