# タイマー処理
scoreboard players remove $time _ 1
execute store result bossbar time value run scoreboard players get $time _

execute if score $time _ matches 1800 run bossbar set time color yellow
execute if score $time _ matches 600 run bossbar set time color red