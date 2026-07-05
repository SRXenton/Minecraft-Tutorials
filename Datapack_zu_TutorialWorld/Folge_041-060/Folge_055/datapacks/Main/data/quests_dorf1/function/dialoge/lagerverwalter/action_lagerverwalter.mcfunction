### Wird aufgerufen aus: trigger_action.mcfunction

# Gebe dem Spieler, der diese Function ausführt, eine Stick mit dem Item Model, Namen, Lore und den Custom Daten
give @s stick[\
    item_model="minecraft:chest",\
    custom_name=[\
        {"text":"Paket für den Dorfschmied","italic":false}\
    ],\
    lore=[\
        [\
            {"text":"Questgegenstand","italic":false,"color":"yellow","bold":true}\
        ],\
        "",\
        [\
            {"text":"Ein Paket mit Kohle für den Dorfschmied","italic":false}\
        ]\
    ],\
    custom_data={"tag":"kfdds"}\
]

# Setze den Wert bei dem Spieler, der diese Function ausführt, in dem Scoreboard Quest_Dorfvorsteher auf 31
scoreboard players set @s Quest_Dorfvorsteher 31
