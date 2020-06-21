# ボールにあたった時の処理
## ゲームモードを変更する
gamemode spectator @s

## PLAYを削除する
scoreboard players reset @s PLAY

## スコアに時間を入れる
scoreboard players operation @s SCORE = $time _
