# 完了処理
## 初期化
scoreboard players set $core:error _ 0

## 共通処理
execute if score $core:error _ matches 0 run function core:play/priv/term

## 競技開始
execute if score $core:error _ matches 0 run function core:play/priv/draft

scoreboard players reset $core:error _
