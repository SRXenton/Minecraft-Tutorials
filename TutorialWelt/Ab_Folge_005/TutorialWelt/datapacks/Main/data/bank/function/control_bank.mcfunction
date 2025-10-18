execute at @e[type=villager,tag=bank_baenker] if entity @a[distance=..3] run function bank:dialog/baenker

scoreboard players set @a Villager_Klick_Bank 0