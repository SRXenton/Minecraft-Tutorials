# Überprüfe bei dem Spieler, der diese Funtion ausführt, ob bei ihm im Scoreboard Currency_Total der Wert >= dem Macro Wert loot ist
# Wenn nicht Springe aus der Function und gib fail (0) zurück
$execute unless score @s Currency_Total matches $(loot).. run return fail

# Entferne bei dem Spieler, der diese Funtion ausführt, den Marco Wert loot
$scoreboard players remove @s Currency_Total $(loot)

# Rufe die Function calulate auf
function currency:calculate