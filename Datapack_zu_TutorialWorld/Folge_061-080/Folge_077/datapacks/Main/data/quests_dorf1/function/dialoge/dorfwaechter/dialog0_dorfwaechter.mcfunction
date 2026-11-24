execute unless score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, komm bitte später wieder",color:"yellow"}]

# execute if score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, der Dorfvorsteher hat mir schon bescheid gegeben, leider muss ich noch was Vorbereiten. Komm bitte später wieder",color:"yellow"}]

execute if score @s Quest_Dorfvorsteher matches 100.. run scoreboard players enable @s Quest.Panda_Village.Waechter

execute if score @s Quest_Dorfvorsteher matches 100.. run dialog show @s {\
    type:"minecraft:dialog_list",\
    title:{\
        text:"Wächter",\
        color:"gold",\
        bold:true,\
        shadow_color:[0.5,0.3,0.2,0.3]\
    },\
    pause:false,\
    body:[\
        {\
            type:"minecraft:plain_message",\
            width:1000,\
            contents:{\
                text:"Hallo Reisender, der Dorfvorsteher hat mir schon bescheid gegeben.",\
                color:"yellow"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            width:1000,\
            contents:{\
                text:"Du möchtest ewtas über Charakterwerte erfahren.",\
                color:"yellow"\
            }\
        }\
    ],\
    dialogs:[\
        {\
            type:"minecraft:confirmation",\
            title:{\
                text:"Wächter",\
                color:"gold",\
                bold:true,\
                shadow_color:[0.5,0.3,0.2,0.3]\
            },\
            external_title:{\
                text:"Weiter",\
                color:"red",\
                bold:true,\
                shadow_color:[0.5,0.3,0.2,0.3]\
            },\
            pause:false,\
            body:[\
                {\
                    type:"minecraft:plain_message",\
                    width:1000,\
                    contents:{\
                        text:"Ich werde dir ein Item geben, womit du deine Charakterwerte aufrufen kannst.",\
                        color:"yellow"\
                    }\
                },\
                {\
                    type:"minecraft:item",\
                    item:"totem_of_undying",\
                    description:[\
                        {text:"Charakter-Ansicht", color:"yellow"}\
                    ],\
                    show_decorations:true,\
                    show_tooltip:false,\
                    height:16,width:1\
                },\
                {\
                    type:"minecraft:plain_message",\
                    width:1000,\
                    contents:[\
                        {\
                            text:"Möchtest du das haben ",\
                            color:"yellow"\
                        },\
                        {\
                            text:"?",\
                            color:"red"\
                        }\
                    ]\
                }\
            ],\
            yes:{\
                label:"Ja",\
                action:{\
                    type:"minecraft:run_command",\
                    command:"trigger Quest.Panda_Village.Waechter set 5"\
                }\
            },\
            no:{\
                label:"Nein",\
                action:{\
                    type:"minecraft:run_command",\
                    command:"trigger Quest.Panda_Village.Waechter add 0"\
                }\
            }\
        }\
    ]\
}

return 1