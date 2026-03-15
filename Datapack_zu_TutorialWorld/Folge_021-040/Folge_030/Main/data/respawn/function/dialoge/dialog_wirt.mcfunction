scoreboard players enable @s SpawnPoint

dialog show @s {\
    "type": "minecraft:confirmation",\
    "title": "Gastwirt",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Möchtest du deinen Respawnpunkt hierher verlegen?"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger SpawnPoint set 1"\
        }\
    },\
    "no": {\
        "label": "Nein",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger SpawnPoint set 0"\
        }\
    }\
}