dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10}] quests_dorf1:dorf1_dorfschmied10

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..9}] [{"color":"gold","text":"Dorfschmied: "},{"color":"yellow","text":"Ich kann nichts für dich tun."}]
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=11..30},nbt=!{Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] [{"color":"gold","text":"Dorfschmied: "},{"color":"yellow","text":"Geh bitte zum Lagerverwalter."}]

execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=30},nbt={Inventory:[{id:"minecraft:stick","components":{"minecraft:custom_data":{"tag":"kfdds"}}} ] }] at @s run function quests_dorf1:dialoge/dorfschmied/action_dorfschmied
