# ゲーム終了処理
## 全員をTP
## TODO: 座標
gamemode adventure @a
spreadplayers 0 0 10 10 true @a

## ゲーム終了テキスト
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.message","clickEvent":{"action":"run_command","value":"/function core:term/priv/book"}}
