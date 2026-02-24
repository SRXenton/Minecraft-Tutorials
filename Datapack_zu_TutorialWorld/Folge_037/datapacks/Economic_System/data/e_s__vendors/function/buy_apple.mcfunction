scoreboard objectives add E_S.Temp1 dummy

# loot > Geldabzug
# quantitiy > Menge am Äpfel
execute store result score @s E_S.Temp1 run data get storage e_s__vendor:data prices."minecraft:apple".buy
scoreboard players operation @s E_S.Temp1 *= @s E_S.Vendor_Panda_Village_buy_apple

execute store result storage e_s__vendor:data buy.loot int 1 run scoreboard players get @s E_S.Temp1
execute store result storage e_s__vendor:data buy.quantity int 1 run scoreboard players get @s E_S.Vendor_Panda_Village_buy_apple


function e_s__vendors:buy with storage e_s__vendor:data buy
scoreboard objectives remove E_S.Temp1