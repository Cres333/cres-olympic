# 参加回数を増加
execute as @a[scores={JOIN=0..}] run scoreboard players add @s COUNT 1

# コールバック
execute if data storage main {game:weight} run function weight:ready/select/end
