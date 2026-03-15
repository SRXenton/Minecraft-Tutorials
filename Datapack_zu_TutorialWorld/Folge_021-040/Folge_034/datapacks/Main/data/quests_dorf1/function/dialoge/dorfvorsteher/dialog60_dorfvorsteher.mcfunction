# Scoreboard, beim Spieler, Trigger einschalten, bei dem Spieler, der die Function aufruft, beim Scoreboard
scoreboard players enable @s Quest_Dorfvorsteher

# Zeige Dialog bei dem Spieler, der die Function aufruft.
# mit run_comman -> trigger
dialog show @s {\
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
            "command": "trigger Quest_Dorfvorsteher set 61"\
        }\
    },\
    "no": {\
        "label": "Nein",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Quest_Dorfvorsteher add 0"\
        }\
    }\
}

#function quests_dorf1:dialoge/dorfvorsteher/action60_dorfvorsteher