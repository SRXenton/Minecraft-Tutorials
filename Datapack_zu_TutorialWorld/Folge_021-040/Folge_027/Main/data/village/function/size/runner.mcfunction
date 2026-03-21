# Folgende Tags / Villager müssen ausgefilter werden:
# bank, bank_baenker
# trader
# quest_npc

#Führe aus, speichere das Ergebis ins Score, von führe aus, wenn jede Entity nicht mit den Tags, in der Distance, vom dem Typ
# Übersetzt: Speichere das Ergebnis ins Scoreboard von dem der If-Abfrsage
$execute store result score _count_villager Village_Villager_count run execute if entity @e[tag=!trader,tag=!bank,tag=!quest_npc, distance=..$(d), type=villager]

# Führe aus, wenn score Wert gleich/größer den Macrowert, dann kill jede Entity mit nicht dem Tag, in der Distance bis zu dem Wert aus dem Macro, vom Typ
$execute if score _count_villager Village_Villager_count matches $(max).. run kill @e[limit=1,tag=!trader,tag=!bank,tag=!quest_npc, distance=..$(d), type=villager]


