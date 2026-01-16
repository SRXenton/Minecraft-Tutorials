# Führe aus, als jede Entoty mit dem Tag(mit Macro) und den Typ, wenn ein Target existiert als das Target, die Function
$execute as @e[tag=gasthaus_interaction_$(tagging), type=interaction] on target run function respawn:dialoge/dialog_wirt {destination:$(destination)}

# Daten entfernen aus jeder Entity mit dem Tag(Mit Macro), dem Typ, bei maximal einer Entity, den Attack (attacker)
$data remove entity @e[tag=gasthaus_interaction_$(tagging), type=interaction, limit=1] attack
# Daten entfernen aus jeder Entity mit dem Tag(Mit Macro), dem Typ, bei maximal einer Entity, die Interaction (target)
$data remove entity @e[tag=gasthaus_interaction_$(tagging), type=interaction, limit=1] interaction
