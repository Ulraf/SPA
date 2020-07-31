execute as @a[scores={RestartTimer=1}] run function speed_aid:reset

execute if score spa_global spa_secs matches 60 run scoreboard players add spa_global spa_mins 1
execute if score spa_global spa_secs matches 60 run scoreboard players set spa_global spa_secs 0
execute if score spa_global spa_mins matches 60 run scoreboard players add spa_global spa_hours 1
execute if score spa_global spa_mins matches 60 run scoreboard players set spa_global spa_mins 0

scoreboard players reset spa_global spa_secsdd
execute if score spa_global spa_secs < spa_global spa_dd run scoreboard players set spa_global spa_secsdd 0
scoreboard players reset spa_global spa_minsdd
execute if score spa_global spa_mins < spa_global spa_dd run scoreboard players set spa_global spa_minsdd 0
scoreboard players reset spa_global spa_hoursdd
execute if score spa_global spa_hours < spa_global spa_dd run scoreboard players set spa_global spa_hoursdd 0

execute if score spa_global spa_ticks matches 0.. run title @a actionbar [{"text":"== "},{"score":{"objective":"spa_hoursdd","name":"spa_global"}},{"score":{"objective":"spa_hours","name":"spa_global"}},{"text":":"},{"score":{"objective":"spa_minsdd","name":"spa_global"}},{"score":{"objective":"spa_mins","name":"spa_global"}},{"text":":"},{"score":{"objective":"spa_secsdd","name":"spa_global"}},{"score":{"objective":"spa_secs","name":"spa_global"}},{"text":" =="}]

execute as @a if data entity @s {"seenCredits":1b} run schedule clear speed_aid:inc_timer

#execute in overworld run tag @a[distance=0..] add spa_overworld
#execute in the_nether run tag @a[distance=0..] add spa_nether
#execute in the_end run tag @a[distance=0..] add spa_end