# 終了処理
## ゲームモード変更
gamemode spectator @a

## 装備削除
clear @a
kill @e[type=item]

## スケジュール削除
schedule clear battle:sys/priv/field/1
schedule clear battle:sys/priv/field/2
schedule clear battle:sys/priv/field/3
schedule clear battle:sys/wait/effect

## PLAYとなっているプレイヤーにスコア追加
scoreboard players add @a[predicate=util:play] SCORE 10
scoreboard players add @a[predicate=util:play] _WIN 1

## 次の試合
function battle:game/next
