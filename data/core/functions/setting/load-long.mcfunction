# 競技間の時間を30秒にする
data modify storage play loading set value long

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.setting.update.long"}
