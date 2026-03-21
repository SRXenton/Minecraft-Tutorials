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
            "command": "trigger Quest_Dorfvorsteher set 50"\
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