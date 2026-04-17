
scoreboard objectives add Panda_Village_wachter dummy

execute if score _counter_0_to_20 Global_Variables matches 15 run function quests_dorf1:waechter/patrolie/check_entity_waechter

execute unless score _check_if_player_before_entity Panda_Village_wachter matches 1 run function quests_dorf1:waechter/patrolie/patrolie

function quests_dorf1:waechter/patrolie/detect_player

scoreboard objectives setdisplay sidebar Panda_Village_wachter
#scoreboard objectives remove Panda_Village_wachter
