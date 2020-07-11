## スコア計算の前にライフを加算
execute as @a[predicate=util:play] run scoreboard players operation @s SCORE += @s _LIFE

## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモード変更
gamemode spectator @a

# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1043 32 -1362 1075 36 -1330 air

## スコアボード破棄
scoreboard objectives remove _CLICK
scoreboard objectives remove _LIFE
scoreboard objectives remove _SHOW
scoreboard objectives remove _ID

## 次のゲーム
function core:game/next
