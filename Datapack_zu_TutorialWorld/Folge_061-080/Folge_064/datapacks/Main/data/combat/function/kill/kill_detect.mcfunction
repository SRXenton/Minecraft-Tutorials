data merge storage main:kill {data:{temp:{}}}


#execute as @a[scores={main.kill_detect=1.., main.kill_detect_player=0}] run function combat:kill/kill_get_data with entity @s
execute as @a[scores={main.kill_detect=1.., main.kill_detect_player=0}] run function combat:kill/kill_calculation
# with entity @s


scoreboard players set @a main.kill_detect_player 0
scoreboard players set @a main.kill_detect 0

#data remove storage main:kill data.temp