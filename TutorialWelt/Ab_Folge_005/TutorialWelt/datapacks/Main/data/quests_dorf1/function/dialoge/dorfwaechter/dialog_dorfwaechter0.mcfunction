execute unless score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, komm bitte später wieder",color:"yellow"}]

# execute if score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, der Dorfvorsteher hat mir schon bescheid gegeben, leider muss ich noch was Vorbereiten. Komm bitte später wieder",color:"yellow"}]

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
            type:"minecraft:notice",\
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
                    type:"minecraft:plain_message",\
                    width:1000,\
                    contents:{\
                        text:"Leider habe ich es noch nicht bei mir, komm bitte später wieder !!",\
                        color:"yellow"\
                    }\
                }\
            ],\
        },\
        {\
            type:"minecraft:notice",\
            title:{\
                text:"Testfenster",\
                color:"gold",\
                bold:true,\
                shadow_color:[0.5,0.3,0.2,0.3]\
            },\
            external_title:{\
                text:"Zum Spaß",\
                color:"red",\
                bold:true,\
                shadow_color:[0.5,0.3,0.2,0.3]\
            },\
            pause:false,\
            inputs:[{type:"minecraft:boolean",key:"",label:"jjsdfsd"}],\
            body:[\
                {\
                    type:"minecraft:plain_message",\
                    width:1000,\
                    contents:[\
                        {\
                            text:"Hallo",\
                            color:"yellow"\
                        },\
                        {\
                            text:"Welt",\
                            color:"blue"\
                        }\
                    ]\
                }\
            ],\
        }\
    ]\
}