# システム終了処理
## クリア
effect clear @a

## ボートを削除
kill @e[type=item]
kill @e[type=boat]
kill @e[tag=rider]

## PLAYから外す
scoreboard players reset * PLAY

## ゲーム終了
function boat:game/next
