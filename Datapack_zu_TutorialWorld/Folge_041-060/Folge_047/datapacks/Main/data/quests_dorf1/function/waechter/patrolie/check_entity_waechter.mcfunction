
execute store result score _check Panda_Village_wachter if entity @e[tag=panda_village_route_check]

execute if score _check Panda_Village_wachter matches 4 unless entity @e[tag=panda_village_waechter] run function quests_dorf1:waechter/summon_waechter

