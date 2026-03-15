#Führe aus als die Entity, die die Function aufruft, summon display_block mit Offset y=2,8 mit den NBT Daten, Tags aus dem Macro
$execute at @s run summon block_display ~ ~2.8 ~ {block_state:{Name:"gold_block"},Tags:["quest_marker","quest_marker_$(pre_tag)_$(tag)"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.1f,0.5f,0.1f],translation:[0f,0f,0f]}}

#Führe aus als die Entity, die die Function aufruft, summon display_block mit Offset y=2,5 mit den NBT Daten, Tags aus dem Macro
$execute at @s run summon block_display ~ ~2.5 ~ {block_state:{Name:"gold_block"},Tags:["quest_marker","quest_marker_$(pre_tag)_$(tag)"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.1f,0.1f,0.1f],translation:[0f,0f,0f]}}