# ゲーム終了
## アイテム削除
clear @a diamond_sword

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
schedule function battle:term 5s
