

$clear @s rotten_flesh $(quantity)
$function e_s__currency:add_money {loot:$(loot)}

$tellraw @s "Du hast Verkauft: $(quantity) Verrottetes Fleisch"
$tellraw @s "Für: $(loot) Groschen"


function e_s__vendors:reset_trigger