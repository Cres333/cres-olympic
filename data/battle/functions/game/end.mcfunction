# ゲーム終了
## スケジュールを停止
schedule clear battle:sys/wait/loop

## アイテム削除
clear @a

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
function battle:term/score
