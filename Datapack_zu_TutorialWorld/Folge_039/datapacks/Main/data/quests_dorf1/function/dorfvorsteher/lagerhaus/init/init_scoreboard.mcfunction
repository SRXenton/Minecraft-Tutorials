## Init scoreboard und Entferne alle nicht benötigten Elemente
# Entfert die Entity mit dem Tag
kill @e[tag=dorf1_lagerhaus_mob_boss]
# Fürt aus, bei der Entity mit dem Tag, den Command Entfent alle Entities mit dem Typ bis zu der Distanz
execute at @e[tag=dorf1_lagerhaus_marker_mob_boss] run kill @e[type=item, distance=..5]

# Enfert das Scoreboard
scoreboard objectives remove Quest_Dorf1_Lagerhaus
# Füge das manulle Scoreboard hinzu
scoreboard objectives add Quest_Dorf1_Lagerhaus dummy

# Setze den Fake Spieler in dem Scoreboard auf 0
scoreboard players set _init Quest_Dorf1_Lagerhaus 0


