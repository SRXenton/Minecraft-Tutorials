# Führe aus, als jeder Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 1 ist, bei dem Spieler, die Function
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=1}] at @s run function quests_dorf1:dialoge/dorfvorsteher/dialog1_dorfvorsteher

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher >= 10 und <= 39 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10..39}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Gehe bitte zum Dorfschmied"}]

# Führe aus, als jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 40 ist, bei dem Spieler, die Function
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=40}] at @s run function quests_dorf1:dialoge/dorfvorsteher/dialog40_dorfvorsteher

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 50, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=50}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Schau bitte im Lagerhaus nach dem Rechten, es liegt außerhalb des Dorfes!"}]

# Führe aus, als jeder Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 60, bei dem Spieler, die Function
execute as @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=60}] at @s run function quests_dorf1:dialoge/dorfvorsteher/dialog60_dorfvorsteher


## Backupzeilen
#tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=40..}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Hallo Reisender, ich sehe, du hast ein Schwert bekommen, leider habe ich zur Zeit keine weiteren Aufgaben für dich."}]
#tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=60}] \
    [\
        {"color":"gold","text":"Dorfvorsteher: "},\
        {"color":"yellow","text":"Was es war ein Zombie.....\n"},\
        {"color":"yellow","text":"\n"},\
        {"color":"yellow","text":"Komm bitte später wieder....!\n"},\
        {"color":"yellow","text":"\n"}\
    ]
