# システム終了処理
## クリア
clear @a
effect clear @a

## ボートと矢を削除
kill @e[type=item]
kill @e[type=boat]
kill @e[type=arrow]

## PLAYから外す
scoreboard players reset * PLAY

## ゲーム終了
function boat:game/next
