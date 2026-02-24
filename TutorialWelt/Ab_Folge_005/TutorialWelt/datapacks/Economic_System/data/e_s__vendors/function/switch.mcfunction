scoreboard objectives add E_S.Vendor_Panda_Village_reset trigger


scoreboard objectives add E_S.Vendor_Panda_Village_sell_rotten_flesh trigger
scoreboard objectives add E_S.Vendor_Panda_Village_buy_apple trigger

data modify storage e_s__vendor:data temp set value ""

execute positioned 1742 65 204 unless entity @e[tag=E_S.Vendors_Panda_Village_villager, distance=..3] run function e_s__vendors:summon_entities
execute positioned 1742 65 204 unless entity @e[tag=E_S.Vendors_Panda_Village_interaction, distance=..3] run function e_s__vendors:summon_entities


function e_s__vendors:interaction

execute as @a[scores={E_S.Vendor_Panda_Village_reset=1..}] run function e_s__vendors:reset_trigger

execute as @a[scores={E_S.Vendor_Panda_Village_sell_rotten_flesh=1..}] run function e_s__vendors:sell_rotten_flesh

execute as @a[scores={E_S.Vendor_Panda_Village_buy_apple=1..}] run function e_s__vendors:buy_apple

