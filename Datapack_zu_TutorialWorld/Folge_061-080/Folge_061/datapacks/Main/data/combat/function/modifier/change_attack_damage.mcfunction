$tellraw @s "$(staerke)"

execute store result storage main:kill data.temp.ad int 1 run data get storage main:kill data.temp.values.staerke
execute store result storage main:kill data.temp.ad double 0.1 run data get storage main:kill data.temp.ad


function combat:modifier/write_attack_damage with storage main:kill data.temp
