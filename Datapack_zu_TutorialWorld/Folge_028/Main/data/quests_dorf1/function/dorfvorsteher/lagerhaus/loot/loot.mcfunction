## Erkennung Boss Mob erledigt
# Führe aus als der Spieler mit dem Scoreboard Wert = 10, wenn der Boss gepawnt wurde und nicht mehr existiert, die Function
# Führe aus, als jeder Spieler mit dem Scoreboard Wert = 10, wenn der Scoreboard Wert beim Fake Player = 1, und wenn nicht jede Entity mit dem Tag, die Function
execute as @a[scores={Quest_Dorf1_Lagerhaus=10}] \
    if score _isBoss Quest_Dorf1_Lagerhaus matches 1 \
        unless entity @e[tag=dorf1_lagerhaus_mob_boss] \
            run function quests_dorf1:dorfvorsteher/lagerhaus/loot/loot_action