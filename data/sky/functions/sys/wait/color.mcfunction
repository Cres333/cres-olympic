# カラー処理
## 色を出す
execute as @e[tag=color,scores={_COLOR=0}] at @s run particle dust 1.0 1.0 1.0 4.0 ~ ~ ~ 1.5 1.5 1.5 0 3 force
execute as @e[tag=color,scores={_COLOR=1}] at @s run particle dust 1.0 0.0 0.0 4.0 ~ ~ ~ 1.5 1.5 1.5 0 3 force
execute as @e[tag=color,scores={_COLOR=2}] at @s run particle dust 0.0 0.0 1.0 4.0 ~ ~ ~ 1.5 1.5 1.5 0 3 force
execute as @e[tag=color,scores={_COLOR=3}] at @s run particle dust 1.0 1.0 0.0 4.0 ~ ~ ~ 1.5 1.5 1.5 0 3 force
execute as @e[tag=color,scores={_COLOR=4}] at @s run particle dust 0.0 1.0 0.0 4.0 ~ ~ ~ 1.5 1.5 1.5 0 3 force

## 最も近いプレイヤーの色に書き換える
execute as @e[tag=color] at @s run scoreboard players operation @s _COLOR = @p[predicate=util:play,distance=..2] _COLOR

## 現在のスコアを表示する
scoreboard players reset * _SHOW
execute as @e[tag=color,scores={_COLOR=1}] run scoreboard players add 赤チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=2}] run scoreboard players add 青チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=3}] run scoreboard players add 黃チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=4}] run scoreboard players add 緑チーム _SHOW 1
