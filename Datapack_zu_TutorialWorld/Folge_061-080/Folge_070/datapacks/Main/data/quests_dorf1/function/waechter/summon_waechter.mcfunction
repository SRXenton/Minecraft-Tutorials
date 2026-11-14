### Wird aufgerufen aus: check_entity_waechter.mcfunction

## Entfernt jede Entity mit dem Tag
kill @e[tag=panda_village_waechter]

## Erzeugt einen Villager an der Position, mit dem NBT Werten
summon minecraft:villager 1751 65 257 {\
    NoAI:1b,\
    CustomName:"Wächter von Panda Village",\
    CustomNameVisible:1b,\
    Tags:["quest_npc","panda_village","panda_village_waechter"],\
    VillagerData:{profession:"minecraft:weaponsmith",level:99,type:"minecraft:jungle"}\
}


