# 終了処理
## ゲームモードを変更
gamemode spectator @p[predicate=util:play]

## キルカウントをスコアへ置き換え
execute as @p[predicate=util:play] run scoreboard players operation @s SCORE > @s _KILL

## 会場を掃除
clear @a
kill @e[type=item]
kill @e[type=pig]
kill @e[type=arrow]

## PLAYから除外
scoreboard players reset * PLAY

## 次の選手へ
function clay:game/next
