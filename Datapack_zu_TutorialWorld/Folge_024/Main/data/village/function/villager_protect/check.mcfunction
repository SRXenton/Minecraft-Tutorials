# Function wird aus einem Commandblock aufgerufen

# Koordinaten und abstand zur mitte für den Mindestradius / Mindestdistanz
#1749 261
# 1860 - 1749 = 111
#1749  190   ->     z-71
# 1819      231 ->  x70
#1749  334      ->  z73
# 1692  231 ->      x-57

# d1 = 73
# d2 = 100


# Führe aus bei position als jede Entity vom Typ in der Distanz wischen Wert 1 und 2, die Function mit dem Macro
$execute positioned ~ ~ ~ as @e[type=minecraft:villager,distance=$(d1)..$(d2)] run function village:villager_protect/action {x:$(x),y:$(y),z:$(z)}