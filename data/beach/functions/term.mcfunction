# スコア/メダル計算
execute as @a[predicate=util:join] run scoreboard players add @s SCORE 10
function util:score/point

# 念の為、削除
schedule clear beach:sys/wait/motion
schedule clear beach:sys/priv/down

# フィールド削除
fill 1043 32 -1368 1075 38 -1325 air

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _PLACE

## 次のゲーム
function core:game/next
