# Folgende Tags / Villager müssen ausgefilter werden:
# bank, bank_baenker
# trader
# quest_npc

#Führe aus, speichere das Ergebis ins Score, von führe aus, wenn jede Entity nicht mit den Tags, in der Distance aus Macro, vom dem Typ
# Übersetzt: Speichere das Ergebnis ins Scoreboard von dem der If-Abfrage
$execute store result score _count_villager Village_Entity_count run execute if entity @e[tag=!trader,tag=!bank,tag=!quest_npc,tag=!gasthaus, distance=..$(d), type=villager]

# Führe aus, wenn score Wert gleich/größer den Macrowert, dann kill jede Entity mit nicht dem Tag, in der Distance bis zu dem Wert aus dem Macro, vom Typ
$execute if score _count_villager Village_Entity_count matches $(max_villager).. run kill @e[limit=1,tag=!trader,tag=!bank,tag=!quest_npc,tag=!gasthaus, distance=..$(d), type=villager]


# Führe aus, speichere das Ergebis ins Score, von führe aus, wenn jede Entity nicht mit den Tags, in der Distance aus Macro, vom dem Typ
$execute store result score _count_Iron_Golem Village_Entity_count run execute if entity @e[tag=!trader,tag=!bank,tag=!quest_npc,tag=!gasthaus, distance=..$(d), type=iron_golem]

# Führe aus, wenn score Wert gleich/größer den Macrowert, dann kill jede Entity mit nicht dem Tag, in der Distance bis zu dem Wert aus dem Macro, vom Typ
$execute if score _count_Iron_Golem Village_Entity_count matches $(max_iron_golem).. run kill @e[limit=1,tag=!trader,tag=!bank,tag=!quest_npc,tag=!gasthaus, distance=..$(d), type=iron_golem]
