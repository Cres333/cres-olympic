# 各wait処理
## プレイヤーエフェクト
function soccer:sys/wait/effect
## クールダウン
function soccer:sys/wait/cool
## ボール処理
function soccer:sys/wait/ball
## プレイヤー処理
function soccer:sys/wait/player
## タイマー処理
function soccer:sys/wait/time

## ゲーム終了
execute if score $time _ matches ..0 run function soccer:game/next
execute unless score $time _ matches ..0 run schedule function soccer:sys/wait/loop 1t
