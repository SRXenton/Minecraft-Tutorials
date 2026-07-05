### Wird aufgerufen aus: manuell

tell @a hello Data pack!

kill @e[type=armor_stand,tag=test_as, distance=..10]

summon armor_stand ~5 ~ ~5 {Tags:["test_as"], Health:15}
summon armor_stand ~5 ~ ~4 {Tags:["test_as"], Health:10}
summon armor_stand ~5 ~ ~3 {Tags:["test_as"], Health:5}
summon armor_stand ~5 ~ ~2 {Tags:["test_as"], Health:1}

scoreboard objectives add main.test_as dummy

execute as @e[tag=test_as] run function base:test2 with entity @s
#execute as @e[tag=test_as] run function base:test4 with entity @s

scoreboard objectives remove main.test_as