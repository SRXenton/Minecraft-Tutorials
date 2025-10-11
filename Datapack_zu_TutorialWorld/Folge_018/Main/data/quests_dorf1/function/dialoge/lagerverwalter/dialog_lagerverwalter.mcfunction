# Zeige jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 20 ist, an
dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=20}] quests_dorf1:dorf1_lagerverwalter20

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher  <= 19 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..19}] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Ich bin gerade beschäftigt, ich kann dir nicht helfen."}]

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 30 ist,
# und einen Stick mit den Custom Data im Invantar ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt={Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Bring die Kohle dem Dorfschmied."}]

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher >= 10 und <= 39 ist, aus
# und NICHT einen Stick mit den Custom Data im Invantar ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Wie du hast die Kohle verlohren ... Hier hast du neue, aber nun bring sie dem Dorfschmied."}]

# Führe bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 30 ist,
# und NICHT einen Stick mit den Custom Data im Invantar ist, die function aus
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] run function quests_dorf1:dialoge/lagerverwalter/action_lagerverwalter


