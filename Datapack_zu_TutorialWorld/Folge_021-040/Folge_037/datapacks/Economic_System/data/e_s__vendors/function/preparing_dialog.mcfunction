scoreboard objectives add E_S.Temp1 dummy
scoreboard objectives add E_S.Temp2 dummy

data modify storage e_s__vendor:data dialog.price_sell set from storage e_s__vendor:data prices."minecraft:rotten_flesh".sell
data modify storage e_s__vendor:data dialog.price_buy set from storage e_s__vendor:data prices."minecraft:apple".buy

# Verkauf an Händler
execute store result storage e_s__vendor:data dialog.max_sell int 1 run clear @s rotten_flesh 0

# Kaufen von Händler
execute store result score @s E_S.Temp1 run data get storage e_s__vendor:data prices."minecraft:apple".buy
execute store result score @s E_S.Temp2 run scoreboard players get @s Currency_Total

scoreboard players operation @s E_S.Temp2 /= @s E_S.Temp1

execute store result storage e_s__vendor:data dialog.max_buy int 1 run scoreboard players get @s E_S.Temp2 

scoreboard objectives remove E_S.Temp1
scoreboard objectives remove E_S.Temp2
