# 枠外検知
scoreboard players set $cornor _ 0
execute as @e[type=snowball] at @s if block ~ 35 ~ red_stained_glass run scoreboard players set $cornor _ 1
execute as @e[type=snowball] at @s if block ~ 35 ~ yellow_stained_glass run scoreboard players set $cornor _ 2
execute as @e[type=snowball] at @s if block ~ 35 ~ orange_stained_glass run scoreboard players set $cornor _ 3

execute if score $cornor _ matches 1.. run function soccer:system/cornor/out
scoreboard players reset $cornor _
