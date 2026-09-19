### Wird aufgerufen aus: detect_player.mcfunction

## Erzeuge Boss Mob

# Führe aus, bei jeder Entity mit dem Tag, den Command Spawne Entity an der Position mit diesen NBT Daten
execute at @e[tag=dorf1_lagerhaus_marker_mob_boss] run summon zombie_villager ~ ~ ~ {VillagerData:{type:plains,profession:farmer,level:99},Tags:["dorf1_lagerhaus_mob","dorf1_lagerhaus_mob_boss"],CustomName:[{text:Kadaver}],Health:1.0,attributes:[{id:max_health,base:1.0f}],DeathLootTable:"combat:dorf1_lagerhaus_bossmob"}

# Setze beim Fake Player den Wert im Scoreboard
scoreboard players set _isBoss Quest_Dorf1_Lagerhaus 1