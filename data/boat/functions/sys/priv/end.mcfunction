# システム終了処理
## クリア
clear @a arrow
clear @a bow
effect clear @a

## ボートと矢を削除
kill @e[type=item]
kill @e[type=boat]
kill @e[tag=rider]
kill @e[type=arrow]

## PLAYから外す
scoreboard players reset * PLAY

## ゲーム終了
function boat:game/next
