## Überprufung und Spawn der Entity
# Wir im Commandblock ausgeführt

# Macro: Führe aus, wenn nicht jede Entity mit dem Typ und dem Tag und in der Entfernung bis 5 Blöcken, den Command
# Spawne Entity Villager mit den Koordinaten aus dem Macro und den NBT Daten
$execute unless entity @e[type=minecraft:villager,tag=bank_baenker, distance=..5] \
    run summon minecraft:villager $(x) $(y) $(z) {VillagerData:{type:plains,profession:cartographer,level:99},CustomName:[{"text":"Bänker","bold":true}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Rotation:[$(r),$(v)],Tags:["bank","bank_baenker"]}
