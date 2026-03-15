# Scoreboard, beim Spieler, Trigger einschalten, bei dem Spieler, der die Function aufruft, beim Scoreboard
scoreboard players enable @s Villager_Trigger_Bank

# Zeige Dialog bei dem Spieler, der die Function aufruft.
# mit run_comman -> trigger
dialog show @s {\
    "type": "minecraft:confirmation",\
    "title": "Bänker",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Hallo Reisender, du möchest auf dein Guthaben zugreifen, mit deinem Geldbeutel kannst du das tun.\n\n\nWas du hast keinen.....?\n\n\nMöchtest du einen Geldbeutel haben? (Ja / Nein)"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Villager_Trigger_Bank set 1"\
        }\
    },\
    "no": {\
        "label": "Nein",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Villager_Trigger_Bank add 0"\
        }\
    }\
}