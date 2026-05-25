data modify storage main:kill data.temp.storage set value "main:kill data.temp.values"

scoreboard objectives add main.kill_temp dummy

execute store result score _level_up1 main.kill_temp run data get storage main:kill data.temp.values.staerke 1


execute store result score _temp main.kill_temp run data get storage main:kill data.temp.values.staerke 1000
#scoreboard < (data * 1000)

#scoreboard players add _temp main.kill_temp 1
#scoreboard > (data / 1000)
execute if score _temp main.kill_temp matches 60000.. run scoreboard players add _temp main.kill_temp 1
execute if score _temp main.kill_temp matches 50000..59999 run scoreboard players add _temp main.kill_temp 2
execute if score _temp main.kill_temp matches 40000..49999 run scoreboard players add _temp main.kill_temp 5
execute if score _temp main.kill_temp matches 20000..39999 run scoreboard players add _temp main.kill_temp 10
execute if score _temp main.kill_temp matches 10000..19999 run scoreboard players add _temp main.kill_temp 25
execute if score _temp main.kill_temp matches ..9999 run scoreboard players add _temp main.kill_temp 50


execute store result storage main:kill data.temp.values.staerke double 0.001 run scoreboard players get _temp main.kill_temp

execute store result score _level_up2 main.kill_temp run data get storage main:kill data.temp.values.staerke 1

execute if score _level_up1 main.kill_temp < _level_up2 main.kill_temp run tellraw @a "Level Up"

function character:misc/character_new_values with storage main:kill data.temp

scoreboard objectives remove main.kill_temp