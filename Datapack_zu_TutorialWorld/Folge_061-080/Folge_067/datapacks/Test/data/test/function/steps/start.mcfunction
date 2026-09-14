execute unless entity @p[tag=Tester] run return 1

execute if score _start status.Test matches 1 if score _player_teleport status.Test matches 0 run function test:misc/player_teleport_panda_village

execute if score _start status.Test matches 1 as @p[tag=Tester] run function test:steps/switch

execute if score _start status.Test matches 2 run tag @p[tag=Tester] remove Tester
