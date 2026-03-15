# Führe aus, als jeder Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 20 ist, bei dem Spieler, die Function
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=20}] at @s run function quests_dorf1:dialoge/lagerverwalter/dialog20_lagerverwalter

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher  <= 19 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..19}] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Ich bin gerade beschäftigt, ich kann dir nicht helfen."}]

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 31 ist,
# und einen Stick mit den Custom Data im Invantar ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=31},nbt={Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Bring die Kohle dem Dorfschmied."}]

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 31 ist,
# und NICHT einen Stick mit den Custom Data im Invantar ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=31},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Wie du hast die Kohle verlohren ... Hier hast du neue, aber nun bring sie dem Dorfschmied."}]

# Führe aus, als jeder Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 31 ist,
# und NICHT einen Stick mit den Custom Data im Invantar ist, die function aus
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=31},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] run function quests_dorf1:dialoge/lagerverwalter/action_lagerverwalter


