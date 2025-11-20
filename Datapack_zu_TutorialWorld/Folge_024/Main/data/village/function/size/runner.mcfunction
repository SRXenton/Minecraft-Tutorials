$execute if score _counter_0_to_20 Global_Variables matches 0 run function village:size/init {d:$(d), c:$(c)}

#execute if score _counter_0_to_20 Global_Variables matches 0 run scoreboard players reset count Village_Size
#$execute if score _counter_0_to_20 Global_Variables matches 0 as @e[type=minecraft:villager, tag=!bank, tag=!quest, tag=!trader, distance=..$(d)] run scoreboard players add count Village_Size 1

#$execute if score _counter_0_to_20 Global_Variables matches 0 if score count Village_Size matches $(c).. run kill @e[type=villager, tag=!bank, tag=!quest, tag=!trader, limit=1,sort=random,distance=..$(d)]
#execute if score _counter_0_to_20 Global_Variables matches 0 as @e[nbt=!{VillagerData:{level:99},Offers:{Recipes:[]}},type=villager,tag=!trader, tag=!quest, tag=!bank] run data merge entity @s {VillagerData:{level:99},Offers:{Recipes:[]}}