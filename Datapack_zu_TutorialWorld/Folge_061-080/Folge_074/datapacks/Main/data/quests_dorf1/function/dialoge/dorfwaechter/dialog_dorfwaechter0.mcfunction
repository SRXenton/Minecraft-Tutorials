execute unless score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, komm bitte später wieder",color:"yellow"}]

# execute if score @s Quest_Dorfvorsteher matches 100.. run tellraw @s [{text:"Wächter: ",color:"gold"},{text:"Hallo Reisender, der Dorfvorsteher hat mir schon bescheid gegeben, leider muss ich noch was Vorbereiten. Komm bitte später wieder",color:"yellow"}]

execute if score @s Quest_Dorfvorsteher matches 100.. run dialog show @s {\
    type:"notice",\
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
                text:"Hallo Reisender, der Dorfvorsteher hat mir schon bescheid gegeben, leider muss ich noch was Vorbereiten.",\
                color:"yellow"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            width:1000,\
            contents:{\
                text:"Komm bitte später wieder !!",\
                color:"yellow"\
            }\
        }\
    ]\
}