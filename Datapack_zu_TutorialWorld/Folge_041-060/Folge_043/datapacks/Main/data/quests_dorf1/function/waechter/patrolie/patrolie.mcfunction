# tag=panda_village_waechter


execute as @e[tag=panda_village_waechter] at @s if block ~ -61 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.05 0 0
execute as @e[tag=panda_village_waechter] at @s if block ~ -61 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.05 180 0
execute as @e[tag=panda_village_waechter] at @s if block ~ -61 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.05 ~ ~ -90 0
execute as @e[tag=panda_village_waechter] at @s if block ~ -61 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.05 ~ ~ 90 0



#tp @e[tag=panda_village_waechter] ~ ~ ~1
#tp @e[tag=panda_village_waechter] ~ ~ ~-1
#tp @e[tag=panda_village_waechter] ~1 ~ ~
#tp @e[tag=panda_village_waechter] ~-1 ~ ~