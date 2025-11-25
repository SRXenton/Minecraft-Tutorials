# Führe aus, wenn im Scoreboard Global_Variables der Wert vom Fake Spieler _in_work = 0,
# und NICHT wenn jede Entity vom Typ villager, mit dem Tag,
# den Command summon villager auf der Position mit den 
# Villager Daten:
# - type: pains
# - profession: weaponsmith
# - level: 99 -> Kein Trade
# Namen:
# - Text: Dorfschmied
# - In FETT gedruckt
# Eigenschaften:
# - Unverwundbar
# - NoAI
# - OnGround (Berührt den Boden, wenn einer Vohanden ist)
# - Rotation 90, 0 -> ist um 90° gedreht, und schaut nach Vorne
# - Tags: "dorf1","dorf1_dorfschmied"
execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=dorf1_dorfschmied] run summon villager 1779 66 235 {VillagerData:{type:plains,profession:weaponsmith,level:99},CustomName:[{text:Dorfschmied,bold:true}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Rotation:[90f,0f],Tags:["dorf1","dorf1_dorfschmied"]}