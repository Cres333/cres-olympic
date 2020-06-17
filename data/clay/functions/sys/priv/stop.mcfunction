# 終了処理
## キルカウントをスコアへ置き換え
execute as @p[predicate=util:play] run scoreboard players operation @s SCORE < @s _KILL

## 会場を掃除
clear @a
kill @e[type=item]
kill @e[type=pig]
kill @e[type=arrow]

## 次の選手へ
function clay:game/next
