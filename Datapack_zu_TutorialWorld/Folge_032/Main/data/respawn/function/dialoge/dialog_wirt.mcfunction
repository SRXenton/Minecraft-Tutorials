# Scoreboard Trigger bei dem Spieler, der die Function aufruft, einschalten
scoreboard players enable @s SpawnPoint

# Zeige Dialog, dem, der die Function aufruft
# Enthält im Dialog Macros
# trigger wird ja (Trigger set 1), nein(Trigger set 0) und beim Schließen(Trigger set 0) des Dialogfensters aufgerufen
$dialog show @s {\
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
            "command": "trigger SpawnPoint set $(destination)"\
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