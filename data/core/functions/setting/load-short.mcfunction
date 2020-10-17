# 競技間の時間を15秒にする
data modify storage play loading set value short

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.setting.update.short"}
