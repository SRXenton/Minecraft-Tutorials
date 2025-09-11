#dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10}] quests_dorf1:dorf1_dorfschmied10

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=..19}] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Ich bin gerade beschäftigt, ich kann dir nicht helfen."}]
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=20..}] [{"color":"gold","text":"Lagerverwalter: "},{"color":"yellow","text":"Ich bin gerade beschäftigt, der Schmied muss warten."}]
