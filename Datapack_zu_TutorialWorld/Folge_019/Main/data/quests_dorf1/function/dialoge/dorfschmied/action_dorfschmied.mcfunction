# Lösche bei dem Spieler, der diese Function ausführt, aus dem Inventar einen Stick mit den Custom Data
clear @s minecraft:stick[custom_data={"tag":"kfdds"}]

# Zeige dem Spieler, der diese Function ausführt, den Dialog
dialog show @s quests_dorf1:dorf1_dorfschmied30

# Gib dem Spieler, der diese Function ausführt, ein Schwert mit Custom Namen, und dem Beschreibungstext
give @s stone_sword[custom_name=[{"text":"Einfaches Schwert","italic":false}],lore=[[{"text":"Ein gewöhnliches einfaches Schwert.","italic":false}]]]

# Setze den Wert im Scoreboard Quest_Dorfvorsteher bei dem Spieler, der diese Function ausführt, auf 40
scoreboard players set @s Quest_Dorfvorsteher 40