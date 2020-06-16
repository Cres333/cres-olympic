scoreboard players set $isGoal _ 0
scoreboard players set $isW _ 0
scoreboard players set $isB _ 0

# 白のゴール側に直接持ち込んだ
execute if score $isGoal _ matches 0 store success score $isGoal _ if entity @p[scores={_HAS=1},predicate=soccer:white-goal] run scoreboard players add $b _ 1
execute if score $isGoal _ matches 1.. run scoreboard players set $isB _ 1

# 黒のゴール側に直接持ち込んだ
execute if score $isGoal _ matches 0 store success score $isGoal _ if entity @p[scores={_HAS=1},predicate=soccer:black-goal] run scoreboard players add $w _ 1
execute if score $isGoal _ matches 1.. run scoreboard players set $isW _ 1

execute if score $isGoal _ matches 1.. run function soccer:sys/goal/in

scoreboard players reset $isGoal _
scoreboard players reset $isW _
scoreboard players reset $isB _
