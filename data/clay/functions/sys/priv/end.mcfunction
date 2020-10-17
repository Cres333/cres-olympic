# 終了処理
## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモードを変更
gamemode spectator @p[predicate=util:play]

## 記録メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"clay.record"}

## キルカウントをスコアへ置き換え
execute as @p[predicate=util:play] run scoreboard players operation @s SCORE > @s _KILL

## 会場を掃除
clear @a crossbow
clear @a arrow
kill @e[type=item]
kill @e[type=creeper]
kill @e[type=arrow]

## PLAYから除外
scoreboard players reset * PLAY

## 次の選手へ
schedule function clay:game/next 8s
