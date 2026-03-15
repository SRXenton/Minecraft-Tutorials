# Führe aus, wenn im Scoreboard Global_Variables der Wert vom Fake Spieler _in_work = 0,
# und NICHT wenn jede Entity vom Typ villager, mit dem Tag,
# den Command function mit dem Macro

execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=dorf1_dorfvorsteher] \
    run function quests_dorf1:entities/summon_dorfvorsteher {pre_tag:"dorf1",tag:"dorfvorsteher"}
