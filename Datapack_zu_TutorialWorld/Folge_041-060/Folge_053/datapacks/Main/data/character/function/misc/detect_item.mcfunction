execute as @a[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"character_view"}}}}] at @s unless entity @e[tag=character_view_interaction,distance=..2] positioned ~ ~1.3 ~ run \
    summon minecraft:interaction ~ ~ ~ {Tags:["character_view_interaction"],width:0.5f,height:0.5f}
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"character_view"}}}}] at @s if entity @e[tag=character_view_interaction,distance=..2] positioned ~ ~1.3 ~ run \
    teleport @e[tag=character_view_interaction] ~ ~ ~
execute as @a[nbt=!{SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"character_view"}}}}] at @s run \
    kill @e[tag=character_view_interaction,distance=..2]

execute as @e[tag=character_view_interaction] on target run function character:misc/get_uuid with entity @s
execute as @e[tag=character_view_interaction] run data remove entity @s interaction
execute as @e[tag=character_view_interaction] run data remove entity @s attack
