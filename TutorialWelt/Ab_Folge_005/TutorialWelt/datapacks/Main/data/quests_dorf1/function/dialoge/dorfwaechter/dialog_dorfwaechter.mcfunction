execute unless score @s Quest.Panda_Village.Waechter matches 0.. run scoreboard players set @s Quest.Panda_Village.Waechter 0

execute if score @s Quest.Panda_Village.Waechter matches 0 run function quests_dorf1:dialoge/dorfwaechter/dialog0_dorfwaechter

execute if score @s Quest.Panda_Village.Waechter matches 10 run function quests_dorf1:dialoge/dorfwaechter/dialog10_dorfwaechter

return 1