execute as @e[tag=E_S.Vendors_Panda_Village_interaction] on target run function e_s__vendors:dialog

execute as @e[tag=E_S.Vendors_Panda_Village_interaction] run data remove entity @s interaction
execute as @e[tag=E_S.Vendors_Panda_Village_interaction] run data remove entity @s attack