# 各wait処理
## クールダウン
function sky:sys/wait/cool
## カラー処理
function sky:sys/wait/color
## プレイヤー処理
function sky:sys/wait/player
## タイマー処理
function sky:sys/wait/time

## ゲーム終了
execute unless score $time _ matches ..0 run schedule function sky:sys/wait/loop 1t
execute if score $time _ matches ..0 run function sky:sys/priv/end
