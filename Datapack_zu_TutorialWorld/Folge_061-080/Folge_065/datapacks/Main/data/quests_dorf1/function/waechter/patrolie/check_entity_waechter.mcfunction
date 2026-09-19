### Wird aufgerufen aus: patrolie/switch.mcfunction

## Speicher die Anzahl ins scoreboard, wenn es mindestens eine Entity mit dem Tag gibt, und speicher die Anzahl
execute store result score _check Panda_Village_wachter if entity @e[tag=panda_village_route_check]

## Wenn der Wert 4 oder mehr im Scoreboard ist, und es keine Entity mit dem Tag gibt, wird die Function ausgeführt
execute if score _check Panda_Village_wachter matches 4.. unless entity @e[tag=panda_village_waechter] run function quests_dorf1:waechter/summon_waechter

