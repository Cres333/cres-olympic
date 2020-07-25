# ゲーム説明を省略しない
data modify storage play description set value true

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.setting.update.on"}
