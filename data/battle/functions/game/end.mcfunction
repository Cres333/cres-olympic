# ゲーム終了
## アイテム削除
clear @a

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
function battle:term/term
