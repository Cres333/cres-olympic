# ゴールした走者の処理
## ゲームモード切替
gamemode spectator @s

## PLAYから外す
scoreboard players reset @s PLAY

## タイマー(ポイント)を入れる
scoreboard players operation @s SCORE += $time _

## 最後の選手がゴールしたらメッセージ
execute if entity @s[scores={_R=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.r"}
execute if entity @s[scores={_B=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.b"}
execute if entity @s[scores={_Y=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.y"}
execute if entity @s[scores={_G=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.g"}
