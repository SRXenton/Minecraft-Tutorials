# Scoreboard, beim Spieler, Trigger einschalten, bei dem Spieler, der die Function aufruft, beim Scoreboard
scoreboard players enable @s Quest_Dorfvorsteher

# Zeige Dialog bei dem Spieler, der die Function aufruft.
# mit run_comman -> trigger
dialog show @s {\
    "type": "minecraft:confirmation",\
    "title": "Dorfschmied",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Oh der Dorfvorsteher schickt dich zu mir, leider kann ich  dir gerade nicht helfen. Mir fehlt Kohle, der Bote aus der Kohlemine hat mir schon länger nichts gebracht.\n\nAber könntest du für mich zum Lager gehen, und beim Verwalter mal nachfragen ob er noch was hat?\n\n\nMöchtest du die Quest annehmen? (Ja / Nein)"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Quest_Dorfvorsteher set 20"\
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