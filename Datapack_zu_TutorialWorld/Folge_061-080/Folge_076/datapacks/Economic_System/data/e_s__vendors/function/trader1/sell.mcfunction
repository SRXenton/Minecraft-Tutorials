### Wird aufgerufen aus: tick_character_switch.mcfunction


$clear @s rotten_flesh $(quantity)
$function e_s__currency:add_money {loot:$(loot)}

$tellraw @s [\
    {"color":"gold","text":"Farmer: "},\
    {"color":"yellow","text":"Du hast verkauft: $(quantity) Verrottetes Fleisch für $(loot) Groschen"}\
]


function e_s__vendors:trader1/reset_trigger