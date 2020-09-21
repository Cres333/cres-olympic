# 各wait処理
## プレイヤーエフェクト
function soccer:sys/wait/effect
## クールダウン
function soccer:sys/wait/cool
## ボール処理
function soccer:sys/wait/ball
## プレイヤー処理
function soccer:sys/wait/player

## ゲーム終了
execute unless score $end _ matches 1 run schedule function draft:soccer/sys/wait/loop 1t
