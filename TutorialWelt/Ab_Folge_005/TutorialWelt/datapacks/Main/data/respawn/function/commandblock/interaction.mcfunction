$execute as @e[tag=gasthaus_interaction_$(tagging), type=interaction] on target run function respawn:dialoge/dialog_wirt {destination:$(destination)}

$data remove entity @e[tag=gasthaus_interaction_$(tagging), type=interaction, limit=1] attack
$data remove entity @e[tag=gasthaus_interaction_$(tagging), type=interaction, limit=1] interaction
