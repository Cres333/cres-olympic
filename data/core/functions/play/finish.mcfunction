# 完了処理
## エラーチェック
scoreboard players set $core:error _ 0
function core:play/priv/error

## 共通処理
execute if score $core:error _ matches 0 run function core:play/priv/term

## 競技開始
execute if score $core:error _ matches 0 run function core:play/priv/setting

scoreboard players reset $core:error _
