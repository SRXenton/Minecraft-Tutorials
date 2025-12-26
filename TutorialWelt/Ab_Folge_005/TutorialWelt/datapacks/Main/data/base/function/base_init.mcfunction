# Entfern Das Scoreboard Global_Variables
scoreboard objectives remove Global_Variables

# Füght das Manulle Scoreboard Global_Variables ein 
scoreboard objectives add Global_Variables dummy

# Setzt den Fake Player _counter_0_to_20 in Global_Variables auf 0
scoreboard players set _counter_0_to_20 Global_Variables 0

# Setzt den Fake Player _in_work in Global_Variables auf 0
scoreboard players set _in_work Global_Variables 0

## Gamerule setzten
# Feindliche Monster
gamerule spawnMonsters false
# Tag-Nacht Rythmus
gamerule doDaylightCycle true
# Reisender Händler
gamerule doTraderSpawning false
# Raids
gamerule disableRaids true
# Inventarverlust
gamerule keepInventory true
# Commandblock Ausgabe
gamerule commandBlockOutput false
# Phantome
gamerule doInsomnia false
# Patrolien
gamerule doPatrolSpawning false
# Spawnradius um den Worldspawn
gamerule spawnRadius 3

# Wetter
function weather:init_scoreboard_weather
# Wolrdspawn
setworldspawn 1576 87 -168 -90 0

function respawn:init