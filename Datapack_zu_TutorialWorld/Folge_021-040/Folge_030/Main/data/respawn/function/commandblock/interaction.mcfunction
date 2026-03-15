execute as @e[tag=gasthaus_interaction_panada_village, type=interaction] on target run function respawn:dialoge/dialog_wirt

data remove entity @e[tag=gasthaus_interaction_panada_village, type=interaction, limit=1] attack
data remove entity @e[tag=gasthaus_interaction_panada_village, type=interaction, limit=1] interaction
