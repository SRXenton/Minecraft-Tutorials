### Wird aufgerufen aus: set_base.mcfunction


execute as @a[tag=!has_base_modify] run attribute @s minecraft:attack_damage base set 0.1
execute as @a[tag=!has_base_modify] run attribute @s minecraft:attack_speed base set 0.8
execute as @a[tag=!has_base_modify] run tag @s add has_base_modify