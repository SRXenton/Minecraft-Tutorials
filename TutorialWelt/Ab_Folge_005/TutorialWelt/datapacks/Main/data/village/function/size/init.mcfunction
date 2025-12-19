# Zeile nach Folge 30 bitte entfernen
scoreboard objectives remove Village_Villager_count

# Scoreboard entferne das Objekt
scoreboard objectives remove Village_Entity_count
#Scoreboard füge das Object als Dummy hinzu
scoreboard objectives add Village_Entity_count dummy

#debug
#scoreboard objectives setdisplay sidebar Village_Entity_count