
$give @s minecraft:apple $(quantity)

$function e_s__currency:remove_money {loot:$(loot)}

$tellraw @s [\
    {"color":"gold","text":"Farmer: "},\
    {"color":"yellow","text":"Du hast gekauft: $(quantity) Äpfel für $(loot) Groschen"}\
]

function e_s__vendors:trader1/reset_trigger