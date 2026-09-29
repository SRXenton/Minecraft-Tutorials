## Init scoreboard
# Scoreboard Entferne Objekt
scoreboard objectives remove Villager_Klick_Bank
# Scoreboard füge hinzu Objekt mit automatischer Erkennung: Rechtsklick auf Villager
scoreboard objectives add Villager_Klick_Bank minecraft.custom:talked_to_villager

# Scoreboard Entferne Objekt
scoreboard objectives remove Villager_Trigger_Bank
# Scoreboard füge hinzu Objekt mit Trigger
scoreboard objectives add Villager_Trigger_Bank trigger