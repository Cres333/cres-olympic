# フィールド削除
# TODO: フィールド座標
## フィールドを読み込み
forceload add 0 0 0 0

## 各レーンを削除
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air

## フィールドの読み込みを解除
forceload remove 0 0 0 0

# ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G
scoreboard players reset * SCORE
scoreboard players reset * _

## ゲームモード設定
data merge storage main {game:"",join:0,team:false}
