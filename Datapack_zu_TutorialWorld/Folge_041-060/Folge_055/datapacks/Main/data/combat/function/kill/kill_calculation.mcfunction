data modify storage main:kill data.temp.storage set value "main:kill data.temp.values"

scoreboard objectives add main.kill_temp dummy

execute store result score _temp main.kill_temp run data get storage main:kill data.temp.values.staerke 1000
#scoreboard < (data * 1000)

scoreboard players add _temp main.kill_temp 1
#scoreboard > (data / 1000)

execute store result storage main:kill data.temp.values.staerke double 0.001 run scoreboard players get _temp main.kill_temp


function character:misc/character_new_values with storage main:kill data.temp

scoreboard objectives remove main.kill_temp