scoreboard objectives remove Village_Size
scoreboard objectives add Village_Size dummy

$execute as @e[type=minecraft:villager, tag=!bank, tag=!quest, tag=!trader, distance=..$(d)] run scoreboard players add count Village_Size 1

$execute if score count Village_Size matches $(c).. run kill @e[type=villager, tag=!bank, tag=!quest, tag=!trader, limit=1,sort=random,distance=..$(d)]


