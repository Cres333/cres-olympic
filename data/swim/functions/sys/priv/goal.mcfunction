# ゴールした泳者の処理
## ゲームモード切替
gamemode spectator @s

## PLAYから外す
scoreboard players reset @s PLAY

## アイテムを消す
clear @s

## エフェクトを消す
effect clear @s water_breathing

## タイマー(ポイント)を追加で入れる
scoreboard players operation @s SCORE += $time _

## 最後の選手がゴールしたらメッセージ
execute if entity @s[scores={_R=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.r"}
execute if entity @s[scores={_B=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.b"}
execute if entity @s[scores={_Y=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.y"}
execute if entity @s[scores={_G=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.g"}
