dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=1}] quests_dorf1:dorf1_dorfvorsteher1

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10..39}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Gehe bitte zum Dorfschmied"}]

tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=40..}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Hallo Reisender, ich sehe, du hast ein Schwert bekommen, leider habe ich zur Zeit keine weiteren Aufgaben für dich."}]
