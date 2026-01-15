# Führe aus, wenn Scoreboard Wert bei Fake_entity = 0, und wenn nicht jede Entity, von dem Typ und dem Tag (mit Macro),
# spawne villager an die Koordinate(Macros,xyz) mit den NBT Daten
$execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=gasthaus_wirt_$(tagging)] \
    run summon villager $(x) $(y) $(z) \
        {VillagerData:\
            {type:plains,profession:"butcher",level:99},\
            CustomName:[{text:Gastwirt,bold:true}],\
            Invulnerable:1b,\
            NoAI:1b,\
            NoGravity:1b,\
            OnGround:1b,\
            PersistenceRequired:1b,\
            Rotation:[$(rotation),0f],\
            Tags:["gasthaus","gasthaus_wirt","gasthaus_wirt_$(tagging)"]\
        }

# Führe aus, wenn Scoreboard Wert bei Fake_entity = 0, und wenn nicht jede Entity, von dem Typ und dem Tag (mit Macro),
# spawne interction an die Koordinaten(Macros,xyz) mit den NBT Daten
$execute if score _in_work Global_Variables matches 0 unless entity @e[tag=gasthaus_interaction_$(tagging)] run \
    summon minecraft:interaction $(x) $(y) $(z) {height:2.0f, width:1.0f, Tags:["gasthaus", "gasthaus_interaction_$(tagging)"]}
