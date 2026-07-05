# War nicht beim Wirt
execute if entity @s[\
    tag=!spawnpoint\
] run tellraw @s [\
        {text:"Dorfvorsteher: ",color:"gold"},\
        {text:"Geh bitte zum Gasthaus, dort zum Wirt und lege bitte deinen Respawn dort hin",color:"yellow"}\
    ]
execute if entity @s[tag=!spawnpoint] run return 0

# ist im Inventar
scoreboard players enable @s Quest_Dorfvorsteher
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
                    "text": "Ah ich sehe du warst im Gasthaus.\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "und hast deinen Respawnpunkt geändert \n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Wahrscheinlich hast du Hunger bekommen\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Geh bitte zum Farmer im Norden, dort kannst du dir Äpfel kaufen\n"\
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
    "pause": false,\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Quest_Dorfvorsteher set 90"\
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