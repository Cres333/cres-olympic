# キャンセル処理
## 共通処理
function core:play/priv/term

## チームから外す
team leave @a

## キャンセルメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.play.cancel"}
