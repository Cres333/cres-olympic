# システム終了処理
## クリア
clear @a
effect clear @a

## ボートと矢を削除
kill @e[type=item]
kill @e[type=boat]
kill @e[type=arrow]

## 次のゲーム
function boat:game/next
