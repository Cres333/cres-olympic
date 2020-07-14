# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1008 32 -1445 1059 39 -1396 air
fill 1008 32 -1396 1029 40 -1297 air
fill 1008 32 -1296 1059 39 -1247 air
fill 1059 32 -1445 1110 39 -1396 air
fill 1089 32 -1396 1110 40 -1296 air
fill 1059 32 -1296 1110 39 -1247 air

## スコアボード破棄
scoreboard objectives remove _ROUND
scoreboard objectives remove _ID

## FriendlyFire無効化
execute if data storage main {mode:single} run team modify r friendlyFire false

## 次のゲーム
function core:game/next
