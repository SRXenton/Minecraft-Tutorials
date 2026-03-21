# Führe aus, wenn im Scoreboard Global_Variables der Wert vom Fake Spieler _in_work = 0,
# und NICHT wenn jede Entity vom Typ villager, mit dem Tag,
# den Command summon villager auf der Position mit den 
# Villager Daten:
# - type: pains
# - profession: nitwit
# - level: 99 -> Kein Trade
# Namen:
# - Text: Dorfschmied
# - In FETT gedruckt
# Eigenschaften:
# - Unverwundbar
# - NoAI
# - OnGround (Berührt den Boden, wenn einer Vohanden ist)
# - Rotation 270, 0 -> ist um 270° gedreht, und schaut nach Vorne
# - Tags: "dorf1","dorf1_lagerverwalter"
execute if score _in_work Global_Variables matches 0 unless entity @e[type=minecraft:villager,tag=dorf1_lagerverwalter] run summon villager 1721 66 295 {VillagerData:{type:plains,profession:nitwit,level:99},CustomName:[{text:Lagerverwalter,bold:true}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Rotation:[270f,0f],Tags:["dorf1","dorf1_lagerverwalter","quest"]}