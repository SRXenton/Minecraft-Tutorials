### Startpunkt
### Aufruf in: Test:tick.json

## Funktion beenden, wenn kein Spieler mit dem Tag Tester existiert
execute unless entity @p[tag=Tester] run return 1

## Status start ist 1 und telport noch nicht durchgeführt, dann Teleport Tester zu Panda Village
execute if score _start status.Test matches 1 \
    if score _player_teleport status.Test matches 0 \
        run function test:misc/player_teleport_panda_village

## Status start ist 1 und führe aus als Tester die Function
execute if score _start status.Test matches 1 as @p[tag=Tester] run function test:steps/switch

## Wenn Status start ist 2 dann Remove Tag vom Spieler
execute if score _start status.Test matches 2 run tag @p[tag=Tester] remove Tester
