# ゴールに投げ入れた
scoreboard players set $isGoal _ 0

## 白のゴール側に入った
execute if entity @e[type=snowball,predicate=soccer:white-goal] run scoreboard players set $isB _ 1
execute if score $isB _ matches 1 run scoreboard players add $b _ 1
execute if score $isB _ matches 1 run scoreboard players set $isGoal _ 1

## 黒のゴール側に入った
execute if score $isGoal _ matches 0 if entity @e[type=snowball,predicate=soccer:black-goal] run scoreboard players set $isW _ 1
execute if score $isW _ matches 1 run scoreboard players add $w _ 1
execute if score $isW _ matches 1 run scoreboard players set $isGoal _ 1

execute if score $isGoal _ matches 1 run function soccer:sys/priv/goal/in

scoreboard players reset $isGoal _
scoreboard players reset $isW _
scoreboard players reset $isB _
