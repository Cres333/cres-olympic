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
