## 雪玉
# 雪玉を追いかけさせる
execute at @e[type=snowball] run tp @e[tag=ball,limit=1] ~ ~-1.5 ~

# 雪玉にエフェクト
execute at @e[type=snowball] run particle flash ~ ~ ~ 0 0 0 0 0 force

# ゴール判定
function soccer:sys/priv/goal/check-throw

# コーナー判定
scoreboard players set $cornor _ 0
execute as @e[type=snowball] at @s if block ~ 38 ~ white_stained_glass run scoreboard players set $cornor _ 1
execute as @e[type=snowball,predicate=!soccer:goal] at @s if block ~ 38 ~ red_stained_glass run scoreboard players set $cornor _ 2
execute as @e[type=snowball,predicate=!soccer:goal] at @s if block ~ 38 ~ orange_stained_glass run scoreboard players set $cornor _ 3

execute if score $cornor _ matches 1.. run function soccer:sys/priv/cornor
scoreboard players reset $cornor _

# 空中にある雪玉をトラップする
execute as @e[type=snowball] at @s if entity @p[predicate=util:play,scores={_COOL=0,_HAS=0},distance=..1.5] run kill @e[type=snowball]
