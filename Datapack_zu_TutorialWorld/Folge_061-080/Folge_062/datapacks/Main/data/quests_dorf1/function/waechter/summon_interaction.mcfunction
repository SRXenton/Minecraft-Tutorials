### Wird aufgerufen aus: patrolie/switch.mcfunction


execute if score _check_if_player_before_entity Panda_Village_wachter matches 1 at @e[tag=panda_village_waechter] unless entity @e[tag=panda_village_waechter_interaction] run summon interaction ~ ~ ~ {width:1.0f,height:2.0f, Tags:["panda_village","panda_village_waechter_interaction"]}
execute unless score _check_if_player_before_entity Panda_Village_wachter matches 1 if entity @e[tag=panda_village_waechter_interaction] run kill @e[tag=panda_village_waechter_interaction]