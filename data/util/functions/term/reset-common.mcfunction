# 共通処理のリセット
## プレイヤー設定
gamemode spectator @a
clear @a
kill @e[type=item]
effect clear @a

## スコアボード削除
scoreboard players reset * PLAY
scoreboard players reset * JOIN
scoreboard players reset * SCORE
scoreboard players reset * _

## 参加数をリストに表示する
scoreboard objectives setdisplay list COUNT

## サブタイトルをリセット
title @a subtitle ""

## ゲームモード設定
data merge storage main {game:"",join:0,team:false,score:point}
