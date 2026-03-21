# ist nicht im Inventar
execute if entity @s[\
    nbt=!{\
        Inventory:[\
            {\
                "id":"minecraft:warped_fungus_on_a_stick",\
                components:{"minecraft:custom_data":{"tag":"geldbeutel"}}\
            }\
        ]\
    }\
] run tellraw @s [\
        {text:"Dorfvorsteher: ",color:"gold"},\
        {text:"Geh bitte zur Bank und lasse dir einen Geldbeutel geben",color:"yellow"}\
    ]

execute if entity @s[nbt=!{Inventory:[{"id":"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] run return -1

# ist im Inventar

execute if entity @s[nbt={Inventory:[{"id":"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] run scoreboard players enable @s Quest_Dorfvorsteher
execute if entity @s[nbt={Inventory:[{"id":"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] run dialog show @s {\
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
                    "text": "Ah ich sehe du warst bei der Bank und hast deinen Geldbeutel.\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Nun wird es Zeit, dass du lernst, wie du deinen Respawnpunkt änderst \n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Gehe dazu bitte ins Gasthaus und spreche den Wirt an\n"\
                },\
                {\
                    "text": "\n"\
                },\
                {\
                    "text": "Wenn du im Gasthaus warst, komme bitte zu mir zurück\n"\
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
            "command": "trigger Quest_Dorfvorsteher set 80"\
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