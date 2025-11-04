# Lösche bei dem Spieler, der diese Function ausführt, aus dem Inventar einen Stick mit den Custom Data
clear @s minecraft:stick[custom_data={"tag":"kfdds"}]

# Zeige dem Spieler, der diese Function ausführt, den Dialog 
dialog show @s {\
    "type": "minecraft:notice",\
    "title": "Dorfschmied",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": {\
            "text": "Danke dass du mir die Kohle gebracht hast.\n\nIch habe in der Zwischenzeit in meinem Lager geschaut und habe noch dieses Schwert gefunden",\
            "type": "text"\
        }\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close"\
}

# Gib dem Spieler, der diese Function ausführt, ein Schwert mit Custom Namen, und dem Beschreibungstext
give @s stone_sword[custom_name=[{"text":"Einfaches Schwert","italic":false}],lore=[[{"text":"Ein gewöhnliches einfaches Schwert.","italic":false}]]]

# Setze den Wert im Scoreboard Quest_Dorfvorsteher bei dem Spieler, der diese Function ausführt, auf 40
scoreboard players set @s Quest_Dorfvorsteher 40