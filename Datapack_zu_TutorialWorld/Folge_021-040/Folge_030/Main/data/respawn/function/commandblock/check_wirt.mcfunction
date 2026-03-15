execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=gasthaus_wirt_panda_village] \
    run summon villager 1782 65 271 \
        {VillagerData:\
            {type:plains,profession:"butcher",level:99},\
            CustomName:[{text:Gastwirt,bold:true}],\
            Invulnerable:1b,\
            NoAI:1b,\
            NoGravity:1b,\
            OnGround:1b,\
            PersistenceRequired:1b,\
            Rotation:[180f,0f],\
            Tags:["gasthaus","gasthaus_wirt","gasthaus_wirt_panda_village"]\
        }
execute if score _in_work Global_Variables matches 0 unless entity @e[tag=gasthaus_interaction_panada_village] run \
    summon minecraft:interaction 1782 65 271 {height:2.0f, width:1.0f, Tags:["gasthaus", "gasthaus_interaction_panada_village"]}
