#clear @s dirt 0

execute store result storage e_s__vendor:data dialog.max_sell int 1 run clear @s rotten_flesh 0
data modify storage e_s__vendor:data dialog.price_sell set value 1
