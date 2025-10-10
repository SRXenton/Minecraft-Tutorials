# Zeige jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 10 ist, an
dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10}] quests_dorf1:dorf1_dorfschmied10

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher <= 9 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..9}] [{"color":"gold","text":"Dorfschmied: "},{"color":"yellow","text":"Ich kann nichts für dich tun."}]

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher >= 11 und <= 30 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=11..30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Dorfschmied: "},{"color":"yellow","text":"Geh bitte zum Lagerverwalter."}]

# Führe aus als jeder Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 20 ist, die NBT Daten Inventory eine Stick mit custom_data hat, bei dem Spieler, die Function aus
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt={Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] at @s run function quests_dorf1:dialoge/dorfschmied/action_dorfschmied
