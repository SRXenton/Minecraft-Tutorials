## Textausgabe
# Keinen Apfel im Inventar
tellraw @s[\
    nbt=!{Inventory:[{id:"minecraft:apple"}]}\
] [\
    {text:"Dorfvorsteher: ",color:"gold"},\
    {text:"Gehe bitte zum Farmer im Norden und kaufe mindestens einen Apfel und zeig ihn mir",color:"yellow"}\
]
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:apple"}]}] run return -1

#Apfel im Inventar

tellraw @s [{text:"Dorfvorsteher: ",color:"gold"},{text:"Ah, du hast einen Apfel",color:"yellow"}]
