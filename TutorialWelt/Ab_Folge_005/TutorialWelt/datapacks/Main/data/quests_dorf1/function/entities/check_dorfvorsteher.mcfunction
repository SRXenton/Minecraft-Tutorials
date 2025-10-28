# Führe aus, wenn im Scoreboard Global_Variables der Wert vom Fake Spieler _in_work = 0,
# und NICHT wenn jede Entity vom Typ villager, mit dem Tag,
# den Command summon villager auf der Position mit den 
# Villager Daten:
# - type: pains
# - profession: librarian
# - level: 99 -> Kein Trade
# Namen:
# - Text: Dorfschmied
# - In FETT gedruckt
# Eigenschaften:
# - Unverwundbar
# - NoAI
# - OnGround (Berührt den Boden, wenn einer Vohanden ist)
# - Rotation 0, 0 -> ist nicht gedreht, und schaut nach Vorne
# - Tags: "dorf1","dorf1_dorfvorsteher"


execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=dorf1_dorfvorsteher] run function quests_dorf1:entities/summon_dorfvorsteher {pre_tag:"dorf1",tag:"dorfvorsteher"}
