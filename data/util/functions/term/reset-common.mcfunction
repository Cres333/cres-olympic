# 共通処理のリセット
## スコアボード削除
scoreboard players reset * PLAY
scoreboard players reset * JOIN
scoreboard players reset * SCORE
scoreboard players reset * _

## ゲームモード設定
data merge storage main {game:"",join:0,team:false}
