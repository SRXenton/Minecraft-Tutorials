## Zentrale Steuerung Bank
# Wird in tick.json ausgeführt

# Führe aus, bei jeder Entity mit dem Typ und dem Tag, wenn Jeder Spieler in einer Entfernung bis 3 Blöcke, die Funktion
execute at @e[type=villager,tag=bank_baenker] if entity @a[distance=..3] run function bank:dialog/baenker

# Scoreboard setzte bei jedem Spieler den Wert 0
scoreboard players set @a Villager_Klick_Bank 0