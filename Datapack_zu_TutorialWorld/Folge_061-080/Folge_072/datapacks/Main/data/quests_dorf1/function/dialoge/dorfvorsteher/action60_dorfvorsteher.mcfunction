### Wird aufgerufen aus: trigger_action.mcfunction

## Action bei Dorfvorsteher Quest Stufe 60
# Wird aufgerufen bei Ja im Dialog in der Queststufe 60

# Scoreboard setze Spieler, der die Function aufruft, auf Wert = 70
scoreboard players set @s Quest_Dorfvorsteher 70
# Rufe die Funktion auf mit dem Macro
function e_s__currency:add_money {loot:100}