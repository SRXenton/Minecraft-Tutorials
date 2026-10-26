### Wird aufgerufen aus: dialog_dorfvorsteher.mcfunction

## Textausgabe
# Keinen Apfel im Inventar
tellraw @s[\
    nbt=!{Inventory:[{id:"minecraft:apple"}]}\
] [\
    {text:"Dorfvorsteher: ",color:"gold"},\
    {text:"Gehe bitte zum Farmer im Norden und kaufe mindestens einen Apfel und zeig ihn mir",color:"yellow"}\
]
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:apple"}]}] run return 1

#Apfel im Inventar

# tellraw @s [{text:"Dorfvorsteher: ",color:"gold"},{text:"Ah, du hast einen Apfel",color:"yellow"}]

scoreboard players enable @s Quest_Dorfvorsteher

dialog show @s {\
    type:"minecraft:confirmation",\
    "title":"Dorfvorsteher",\
    "can_close_with_escape":true,\
    pause:false,\
    body:[\
        {type:"minecraft:plain_message",contents:[\
            {text:"Ah, ich she du hast einen Apfel gekauft"}\
        ]},\
        {type:"minecraft:plain_message",contents:[\
            {text:"Wenn du mehr über Charakterwerte und Kampf erfahren möchtest, dann gehe bitte zum Dorfwächter. Dieser läuft hier irgendwo Patrolie "}\
        ]},\
        {type:"minecraft:plain_message",contents:[\
            {text:"Möchtest du, dass ich ihm bescheid gebe ?"}\
        ]}\
    ],\
    no:{label:"Nein",action:{type:"minecraft:run_command",command:"trigger Quest_Dorfvorsteher add 0"}},\
    yes:{label:"Ja",action:{type:"minecraft:run_command",command:"trigger Quest_Dorfvorsteher set 100"}},\
}


return 2
