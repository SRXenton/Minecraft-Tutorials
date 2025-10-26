# Wird aufgerufen aus check.mcfunction

# Gebe Effekt der Entity, der die Function aufruft unsichtbar und unendlich
effect give @s invisibility infinite
# Teleportiere die Entity, die die Function aufruft, auf die Koordinaten aus dem Macro
$teleport @s $(x) $(y) $(z)
# Daten zusammenfügen der Entity, die die Function aufruft
data merge entity @s {Health:20.0f}
# Enferne Effekt der Entity, der die Function aufruft unsichtbar
effect clear @s invisibility
