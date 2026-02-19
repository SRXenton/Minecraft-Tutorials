

scoreboard objectives add E_S.Temp1 dummy


#scoreboard players get @s E_S.Vendor_Panda_Village_sell_rotten_flesh
execute store result score @s E_S.Temp1 run data get storage e_s__vendor:data dialog.price_sell
scoreboard players operation @s E_S.Temp1 *= @s E_S.Vendor_Panda_Village_sell_rotten_flesh

execute store result storage e_s__vendor:data sell.loot int 1 run scoreboard players get @s E_S.Temp1
execute store result storage e_s__vendor:data sell.quantity int 1 run scoreboard players get @s E_S.Vendor_Panda_Village_sell_rotten_flesh

function e_s__vendors:trader1/sell with storage e_s__vendor:data sell

data remove storage e_s__vendor:data sell
scoreboard objectives remove E_S.Temp1