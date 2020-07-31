scoreboard players set spa_global spa_ticks 0
scoreboard players set spa_global spa_secs 0
scoreboard players set spa_global spa_mins 0
scoreboard players set spa_global spa_hours 0

scoreboard players reset @a RestartTimer
scoreboard players enable @a RestartTimer
schedule clear speed_aid:inc_timer
schedule function speed_aid:inc_timer 1s append