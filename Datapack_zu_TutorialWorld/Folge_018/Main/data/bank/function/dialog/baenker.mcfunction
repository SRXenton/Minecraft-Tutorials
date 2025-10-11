## Check Villager Talk
# Zeige Dialog bei jedem Spieler mit dem Scorebord Wert = 1 und nicht mit den NBT Daten
dialog show @a[scores={Villager_Klick_Bank=1},nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick","components":{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] {\
    "type": "minecraft:confirmation",\
    "title": "Bänker",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Hallo Reisender, du möchest auf dein Guthaben zugreifen, mit deinem Geldbeutel kannst du das tun.\n\n\nWas du hast keinen.....?\n\n\nMöchtest du einen Geldbeutel haben? (Ja / Nein)"\
    },\
    "inputs": [],\
    "can_close_with_escape": true,\
    "after_action": "close",\
    "yes": {\
        "label": "Ja",\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "function currency:give_wallet"\
        }\
    },\
    "no": {"label": "Nein"}\
}

# Gibt im Chat aus, bei jedem Spieler mit dem Scoreboard Wert = 1 und den NBT Daten
tellraw @a[scores={Villager_Klick_Bank=1},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick","components":{"minecraft:custom_data":{"tag":"geldbeutel"}}}]}] \
    [{"color":"gold","text":"Bänker: "},{"color":"yellow","text":"Hallo Reisender, du möchest auf dein Guthaben zugreifen, mit deinem Geldbeutel kannst du das tun."}]


