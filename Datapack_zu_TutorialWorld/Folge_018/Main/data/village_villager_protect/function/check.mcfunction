#1749 261
# 1860 - 1749 = 111
#1749  190   ->     z-71
# 1819      231 ->  x70
#1749  334      ->  z73
# 1692  231 ->      x-57

# d1 = 73
# d2 = 100

$execute positioned ~ ~ ~ as @e[type=minecraft:villager,distance=$(d1)..$(d2)] run function village_villager_protect:action {x:$(x),y:$(y),z:$(z)}