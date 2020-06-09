scoreboard players set $isGoal _ 0
scoreboard players set $isW _ 0
scoreboard players set $isB _ 0

# 白のゴール側に入った
execute if score $isGoal _ matches 0 store success score $isGoal _ if entity @e[type=snowball,predicate=soccer:white-goal] run scoreboard players add $b _ 1
execute if score $isGoal _ matches 1.. run scoreboard players set $isB _ 1

# 黒のゴール側に入った
execute if score $isGoal _ matches 0 store success score $isGoal _ if entity @e[type=snowball,predicate=soccer:black-goal] run scoreboard players add $w _ 1
execute if score $isGoal _ matches 1.. run scoreboard players set $isW _ 1

execute if score $isGoal _ matches 1.. run function soccer:system/goal/in

# ゴールポスト(外側判定)
scoreboard players set $cornor _ 0
execute if score $isGoal _ matches 0 as @e[type=snowball] at @s if block ~ 35 ~ white_stained_glass run scoreboard players set $cornor _ 4
execute if score $isGoal _ matches 0 as @e[type=snowball] at @s if block ~ 35 ~ black_stained_glass run scoreboard players set $cornor _ 5
execute if score $cornor _ matches 1.. run function soccer:system/cornor/out
scoreboard players reset $cornor _

scoreboard players reset $isGoal _
scoreboard players reset $isW _
scoreboard players reset $isB _
