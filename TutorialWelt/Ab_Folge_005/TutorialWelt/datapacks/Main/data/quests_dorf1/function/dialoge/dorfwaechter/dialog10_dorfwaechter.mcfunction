# scoreboard players enable @s Quest.Panda_Village.Waechter

dialog show @s {\
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
                text:"Ich schätze du hast es dir schon angeschaut",\
                color:"yellow"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            width:1000,\
            contents:{\
                text:"Es gibt einen alternativen weg an die Charakterwerte zu kommen.",\
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
                        text:"Mit der Quick Action Taste, kannst du einen Menü öffnen.",\
                        color:"yellow"\
                    }\
                },\
                {\
                    type:"minecraft:plain_message",\
                    width:1000,\
                    contents:[\
                        {\
                            text:"Hier kannst du dir unter anderem auch deine Charakterwerte anschauen",\
                            color:"yellow"\
                        },\
                        {\
                            text:"",\
                            color:"red"\
                        }\
                    ]\
                }\
            ]\
        }\
    ]\
}

return 1