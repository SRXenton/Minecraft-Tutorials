# Zeige jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 1 ist, an
dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=1}] quests_dorf1:dorf1_dorfvorsteher1

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher >= 10 und <= 39 ist, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=10..39}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Gehe bitte zum Dorfschmied"}]


# Gib einen Dialog bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 40 ist, aus
dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=40}] {\
    "type": "minecraft:confirmation",\
    "title": "Dorfvorsteher",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": {\
            "text":"Hallo Reisender\n",\
            "type":"text",\
            "extra": [\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Ich sehe du hast ein Schwert bekommen.\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Kannst du mir bitte einen Gefallen tun?\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Außerhalb des Dorfes in Richtung Osten liegt ein Lagerhaus, irgendwas eigenartiges geht da vor sich.\n"\
                },\
                {\
                    "text": "Kannst du da bitte mal nach dem Rechten sehen?\n"\
                },\
                {\
                    "text": "\n\n"\
                },\
                {\
                    "text": "Möchtest du die Quest annehmen? (Ja / Nein)\n"\
                }\
            ]\
        }\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "scoreboard players set @s Quest_Dorfvorsteher 50"\
        }\
    },\
    "no": {\
        "label": "Nein"\
    }\
}

# Gib Tellraw bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 50, aus
tellraw @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=50}] [{"color":"gold","text":"Dorfvorsteher: "},{"color":"yellow","text":"Schau bitte im Lagerhaus nach dem Rechten, es liegt außerhalb des Dorfes!"}]

# Gib einen Dialog bei jedem Spieler, bei dem im Scoreboard Villager_Klick_Dorf1 = 1 und im Scoreboard Quest_Dorfvorsteher = 60, aus
dialog show @a[scores={Villager_Klick_Dorf1=1,Quest_Dorfvorsteher=60}] {\
    "type": "minecraft:confirmation",\
    "title": "Dorfvorsteher",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": {\
            "text":"Hallo Reisender\n",\
            "type":"text",\
            "extra": [\
                {\
                    "text": "\n\n\n"\
                },\
                {\
                    "text": "Ich sehe du bist wohl auf, und du sagst es war ein Zombie im Lagerhaus.\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Ich werde das Prüfen !\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Hier hast du deine Belohnung....... Was du hast kein Geldbeutel, dann aber schnell zur Band und lass dir einen geben\n"\
                },\
                {\
                    "text": "\n\n\n"\
                },\
                {\
                    "text": "Bei ja: Reward 1 Taler\n"\
                },\
                {\
                    "text": "\n\n\n"\
                },\
                {\
                    "text": "Möchtest du die Quest annehmen? (Ja / Nein)\n"\
                }\
            ]\
        }\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "function quests_dorf1:dialoge/dorfvorsteher/action60_dorfvorsteher"\
        }\
    },\
    "no": {\
        "label": "Nein"\
    }\
}


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
