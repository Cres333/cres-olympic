# ゲーム終了
## スケジュールを停止
schedule clear relay:sys/wait/loop

## アイテム削除
clear @a

## PLAYから除外
scoreboard players reset * PLAY

## 各プレイヤーのポイントを再計算
function relay:game/priv/calc-score

## 終了処理
function relay:term/term
