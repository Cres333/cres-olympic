# 終了処理
## スケジュール解除
scoreboard players set $end _ 1
schedule clear draft:soccer/sys/wait/loop

## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモードを変更
gamemode spectator @a
kill @e[tag=ball]
kill @e[type=snowball]
clear @a snowball

## エフェクト削除
effect clear @a

## 終了
schedule function draft:soccer/term 1s
