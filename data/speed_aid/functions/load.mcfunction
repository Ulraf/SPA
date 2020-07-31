gamerule keepInventory true
gamerule doImmediateRespawn true

scoreboard objectives add spa_ticks dummy
scoreboard players add spa_global spa_ticks 0
scoreboard objectives add spa_secs dummy
scoreboard players add spa_global spa_secs 0
scoreboard objectives add spa_secsdd dummy
scoreboard objectives add spa_mins dummy
scoreboard players add spa_global spa_mins 0
scoreboard objectives add spa_minsdd dummy
scoreboard objectives add spa_hours dummy
scoreboard players add spa_global spa_hours 0
scoreboard objectives add spa_hoursdd dummy
scoreboard objectives add spa_dd dummy
scoreboard players set spa_global spa_dd 10

scoreboard objectives add RestartTimer trigger
trigger RestartTimer set 1
scoreboard players enable @a RestartTimer

schedule function speed_aid:inc_timer 1s append
