# Scoreboard, beim Spieler, Trigger einschalten, bei dem Spieler, der die Function aufruft, beim Scoreboard
scoreboard players enable @s Quest_Dorfvorsteher

# Zeige Dialog bei dem Spieler, der die Function aufruft.
# mit run_comman -> trigger
dialog show @s {\
    "type": "minecraft:confirmation",\
    "title": "Dorfvorsteher",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Hallo Reisender, willkommen in dieser Welt. So wie es aussiehst hast du noch keine Ausrüstung. Frag mal den Dorfschmied, ob er dir helfen kann.\n\nWenn du das erledigt hast, kommt nochmal bitte zu mir.\n\n\nMöchtest du die Quest annehmen? (Ja / Nein)"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Quest_Dorfvorsteher set 10"\
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
