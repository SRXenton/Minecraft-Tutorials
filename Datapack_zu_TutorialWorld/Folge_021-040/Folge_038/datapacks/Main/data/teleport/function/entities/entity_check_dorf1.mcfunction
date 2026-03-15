# Führe aus wenn NICHT die Entity mit dem Tag,
# und wenn im Scoreboard vom Fake Spieler der Wert = 0 ist,
# summon interaction auf der Psoition mit den Daten:
# - Höhe: 4.0
# - Weite: 1.5
# - "teleport_stone", "teleport_stone_dorf1"
execute unless entity @e[tag=teleport_stone_dorf1] if score _in_work Global_Variables matches 0 run summon minecraft:interaction 1743 65 268 {height:4.0f, width:1.5f, Tags:["teleport_stone", "teleport_stone_dorf1"]}

# Führe aus als jede Entity mit dem Tag und dem Type, wenn ein target existiert, als das target, dann add ein tag bei der entity vom target
execute as @e[tag=teleport_stone_dorf1, type=minecraft:interaction] on target run tag @s add teleport_to_dorf2

# Führe aus als jede Entity mit dem Tag und dem Type, wenn ein attacker existiert, als der attacker, dann add ein tag bei der entity vom attacker
# Auskommentiert, weil zur Zeit nicht verwendet
#execute as @e[tag=teleport_stone_dorf1, type=minecraft:interaction] on attacker run tp @s 778 65 118

# Enferne aus den Daten, von jeder Entity mit dem Tag, dem Type und maximal bei einer Entity, die interaction (Target)
data remove entity @e[tag=teleport_stone_dorf1, type=minecraft:interaction,limit=1] interaction
# Enferne aus den Daten, von jeder Entity mit dem Tag, dem Type und maximal bei einer Entity, die attack (Attacker)
data remove entity @e[tag=teleport_stone_dorf1, type=minecraft:interaction,limit=1] attack