## 雪玉
# 雪玉を追いかけさせる
execute at @e[type=snowball] run tp @e[tag=ball,limit=1] ~ ~-1.5 ~

# ゴール判定
function soccer:sys/priv/goal/check-throw

# コーナー判定
scoreboard players set $cornor _ 0
execute as @e[type=snowball] at @s if block ~ 38 ~ white_stained_glass run scoreboard players set $cornor _ 1
execute as @e[type=snowball,predicate=!soccer:goal] at @s if block ~ 38 ~ red_stained_glass run scoreboard players set $cornor _ 2
execute as @e[type=snowball,predicate=!soccer:goal] at @s if block ~ 38 ~ orange_stained_glass run scoreboard players set $cornor _ 3

execute if score $cornor _ matches 1.. run function soccer:sys/priv/cornor
scoreboard players reset $cornor _
