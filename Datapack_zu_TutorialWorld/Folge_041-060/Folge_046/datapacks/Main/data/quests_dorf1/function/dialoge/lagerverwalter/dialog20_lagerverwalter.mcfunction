# Scoreboard, beim Spieler, Trigger einschalten, bei dem Spieler, der die Function aufruft, beim Scoreboard
scoreboard players enable @s Quest_Dorfvorsteher

# Zeige Dialog bei dem Spieler, der die Function aufruft.
# mit run_comman -> trigger
dialog show @s {\
    "type": "minecraft:confirmation",\
    "title": "Lagerverwalter",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Was der Schmied schickt dich. Ja ich habe noch Kohle, Hier bring sie ihm.\n\nMöchtest du dem Dorfschmied die Kohle bringen ? (Ja / Nein)"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Quest_Dorfvorsteher set 30"\
        }\
    },\
    "no": {\
        "label": "Nein"\
    }\
}
