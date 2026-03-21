# Führe aus, wenn score den Wert = 2, 
# dann führe aus, als die Entity mit den Werten,
# dann in Data füge ein bei Entity die davor gewählt wurde, die nbt Daten
execute if score _counter_0_to_20 Global_Variables matches 2 \
    run execute as @e[type=minecraft:villager,nbt={Offers:{}}] \
        run data merge entity @s {VillagerData:{level:99},Offers:{Recipes:[]}}


