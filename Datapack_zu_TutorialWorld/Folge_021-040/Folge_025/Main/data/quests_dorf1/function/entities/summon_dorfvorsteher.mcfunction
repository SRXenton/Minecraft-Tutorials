# Tag = dorfvorsteher
# Pre_tag = dorf1


# Command: summon villager auf der Position mit den 
# Villager Daten:
# - type: pains
# - profession: librarian
# - level: 99 -> Kein Trade
# Namen:
# - Text: Dorfschmied
# - In FETT gedruckt
# Eigenschaften:
# - Unverwundbar
# - NoAI
# - OnGround (Berührt den Boden, wenn einer Vohanden ist)
# - Rotation 0, 0 -> ist nicht gedreht, und schaut nach Vorne
# - Tags: {Übergeben mit Macro}
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

# Rufe die Funktion auf mit dem Macro
$function quest_marker:set_marker {pre_tag:"$(pre_tag)",tag:"$(tag)"}
