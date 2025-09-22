dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=20}] quests_dorf1:dorf1_lagerverwalter20

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..19}] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Ich bin gerade beschäftigt, ich kann dir nicht helfen."}]

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt={Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Bring die Kohle dem Dorfschmied."}]

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Wie du hast die Kohle verlohren ... Hier hast du neue, aber nun bring sie dem Dorfschmied."}]
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] run function quests_dorf1:dialoge/lagerverwalter/action_lagerverwalter


