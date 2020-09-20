# キャンセル処理
## 共通処理
function core:play/priv/term

## チームから外す
team leave @a

## ゲーム実行中フラグ
scoreboard players set $play LOGOUT 0

## キャンセルメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.play.cancel"}
