execute at @a[scores={Villager_Klick_Dorf1=1}] unless entity @a[scores={Quest_Dorfvorsteher=0..}] if entity @a[distance=..5] run scoreboard players set @a Quest_Dorfvorsteher 1

execute at @e[type=villager,tag=dorf1_dorfvorsteher] if entity @a[distance=..5] run function quests_dorf1:dialoge/dorfvorsteher/dialog_dorfvorsteher
execute at @e[type=villager,tag=dorf1_dorfschmied] if entity @a[distance=..5] run function quests_dorf1:dialoge/dorfschmied/dialog_dorfschmied
execute at @e[type=villager,tag=dorf1_lagerverwalter] if entity @a[distance=..5] run function quests_dorf1:dialoge/lagerverwalter/dialog_lagerverwalter



scoreboard players set @a Villager_Klick_Dorf1 0