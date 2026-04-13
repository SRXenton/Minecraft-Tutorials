execute unless entity @e[distance=..3,tag=panda_village_route_check] run kill @e[tag=panda_village_route_check]

execute unless entity @e[distance=..3,tag=panda_village_route_check] run summon text_display ~ ~1 ~ {text:"Route geladen check", Tags:["panda_village","panda_village_route_check"]}