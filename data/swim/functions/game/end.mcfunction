# ゲーム終了
## スケジュールを停止
schedule clear swim:sys/wait/loop

## アイテム削除
clear @a trident

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
function swim:term
