# 終了処理
scoreboard players set $end _ 1

## ゲームモード変更
gamemode spectator @a

## 装備削除
clear @a diamond_sword
kill @e[type=item]

## スケジュール削除
schedule clear battle:sys/priv/field/1
schedule clear battle:sys/priv/field/2
schedule clear battle:sys/priv/field/3
schedule clear draft:battle/sys/wait/loop
schedule clear battle:sys/wait/effect

## 終了
schedule function draft:battle/term 1s
