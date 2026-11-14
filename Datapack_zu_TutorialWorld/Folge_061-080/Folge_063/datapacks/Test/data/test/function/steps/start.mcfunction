execute unless entity @p[tag=Tester] run return 1

execute if score _start status.Test matches 1 run tp @p[tag=Tester] 1749 72 261

execute if score _start status.Test matches 1 as @p[tag=Tester] run function test:steps/switch

execute if score _start status.Test matches 2 run tag @p[tag=Tester] remove Tester
