# Füge dem Scoreboard Currency_Total dem Wert Loot aus dem Makro hinzu 
# Beispiel: function currency:add_money {loot:100} -> Gibt 100
$scoreboard players add @s Currency_Total $(loot)

# Rufe Calculate auf
function currency:calculate