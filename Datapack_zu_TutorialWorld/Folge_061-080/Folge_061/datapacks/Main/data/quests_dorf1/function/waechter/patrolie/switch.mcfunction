### Wird aufgerufen aus: Im Commandblock in mitten der Route unten vorm Bedrock

## Erzeuge Scoreboard für den Wächter
scoreboard objectives add Panda_Village_wachter dummy

## Ruft einmal jede sekunde bei Tick 15, die Function auf
execute if score _counter_0_to_20 Global_Variables matches 15 run function quests_dorf1:waechter/patrolie/check_entity_waechter

## Ruft die Function für das erzeugen und löschen der Interaction
function quests_dorf1:waechter/summon_interaction

## Wenn kein Spieler vor der Patrole ist, wird die Routen Function aufgerufen
execute unless score _check_if_player_before_entity Panda_Village_wachter matches 1 run function quests_dorf1:waechter/patrolie/patrolie

## Ruft die Function auf, zur Erkennung Spieler vorm Wächter
function quests_dorf1:waechter/patrolie/detect_player

#scoreboard objectives setdisplay sidebar Panda_Village_wachter
#scoreboard objectives remove Panda_Village_wachter


## Wenn eine Interaction mit dem Tag existiert wird die Function für die Interaction aufgerufen
execute if entity @e[tag=panda_village_waechter_interaction] run function quests_dorf1:waechter/patrolie/interaction_waechter