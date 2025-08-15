execute at @a[scores={Villager_Klick_Dorf1=1}] run scoreboard players set @a[scores={Villager_Klick_Dorf1=1}] Quest_Dorfvorsteher 1

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=1}] "Dorfvorsteher: Willkommen Reisender"


scoreboard players set @a Villager_Klick_Dorf1 0