# ゴールした走者の処理
## ゲームモード切替
gamemode spectator @s

## PLAYから外す
scoreboard players reset @s PLAY

## タイマー(ポイント)を入れる
scoreboard players operation @s SCORE += $time _
