data modify storage test:data data.UUID set value "[I;0,0,0]"

function character:misc/base_values with storage test:data data

execute if data storage main_charakter:player {data:{"[I;0,0,0]":{beweglichkeit:1,staerke:1,ausdauer:1,intelligenz:1}}} run tellraw @s "Test: Ok"
execute unless data storage main_charakter:player {data:{"[I;0,0,0]":{beweglichkeit:1,staerke:1,ausdauer:1,intelligenz:1}}} run tellraw @s "Test: Nicht Ok"

data remove storage main_charakter:player data."[I;0,0,0]"
data remove storage test:data data