# 各wait処理
## クールダウン
function sky:sys/wait/cool
## カラー処理
function sky:sys/wait/color
## プレイヤー処理
function sky:sys/wait/player

## ゲーム終了
execute unless score $end _ matches 1 run schedule function draft:sky/sys/wait/loop 1t
