# スコア/メダル計算
execute if entity @p[predicate=util:join,team=r] run scoreboard players add $r SCORE 1
execute if entity @p[predicate=util:join,team=b] run scoreboard players add $b SCORE 1
execute if entity @p[predicate=util:join,team=y] run scoreboard players add $y SCORE 1
execute if entity @p[predicate=util:join,team=g] run scoreboard players add $g SCORE 1
execute as @a[predicate=util:join] run scoreboard players add @s SCORE 10
function util:score/point

# フィールド削除
fill 1040 32 -1365 1078 51 -1327 air

## スケジュールを削除
schedule clear battle:sys/wait/loop
schedule clear battle:sys/wait/effect

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G
scoreboard objectives remove _DEATH
scoreboard objectives remove _LOG
scoreboard objectives remove _WIN

## 次のゲーム
function core:game/next
