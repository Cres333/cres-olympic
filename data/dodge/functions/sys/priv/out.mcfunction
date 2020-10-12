# ボールにあたった時の処理
## ゲームモードを変更する
gamemode spectator @s

## アウトのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"dodge.retire"}

## PLAYを削除する
scoreboard players reset @s PLAY

## スコアに時間を入れる
scoreboard players add $basePoint _ 10
scoreboard players operation @s SCORE = $basePoint _
scoreboard players set @s[scores={_LOG=1..}] SCORE 0

## エフェクト削除
effect clear @s

## 脱落エフェクト
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10
execute at @s run particle minecraft:explosion ~ ~1 ~ 0.2 1 0.2 0.3 5

## ガラスリセット
fill 1037 39 -1368 1081 34 -1324 air
