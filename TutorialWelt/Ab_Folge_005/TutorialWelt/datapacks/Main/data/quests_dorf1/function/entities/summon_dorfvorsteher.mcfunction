# Tag = dorfvorsteher
$summon villager 1742 65 258 {\
    VillagerData:{type:plains,profession:librarian,level:99},\
    CustomName:[{text:Dorfvorsteher,bold:true}],\
    Invulnerable:1b,\
    NoAI:1b,\
    NoGravity:1b,\
    OnGround:1b,\
    PersistenceRequired:1b,\
    Rotation:[0f,0f],\
    Tags:["$(pre_tag)","$(pre_tag)_$(tag)"]}
$kill @e[tag=quest_marker_$(pre_tag)_$(tag)]
$function quest_marker:set_marker {pre_tag:"$(pre_tag)",tag:"$(tag)"}
