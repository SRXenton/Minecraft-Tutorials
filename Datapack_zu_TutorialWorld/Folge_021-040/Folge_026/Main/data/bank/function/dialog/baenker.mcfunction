## Check Villager Talk
# Führe aus bei jedem Spieler mit dem Scorebord Wert = 1 und nicht mit den NBT Daten, die function
execute as @a[scores={Villager_Klick_Bank=1},nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick","components":{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] at @s run \
    function bank:dialog/dialog_baenker

# Gibt im Chat aus, bei jedem Spieler mit dem Scoreboard Wert = 1 und den NBT Daten
tellraw @a[scores={Villager_Klick_Bank=1},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick","components":{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] \
    [{"color":"gold","text":"Bänker: "},{"color":"yellow","text":"Hallo Reisender, du möchest auf dein Guthaben zugreifen, mit deinem Geldbeutel kannst du das tun."}]


