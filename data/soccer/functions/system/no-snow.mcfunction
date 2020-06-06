# ボールを持っていた人のエフェクトを消す
effect clear @p[scores={_HAS=1}] slowness

# 雪玉を検出したら、ボールを持っている人判定を消す
clear @a snowball
clear @a lead
scoreboard players set @a[predicate=util:play] _HAS 0

# 雪玉を追いかけさせる
execute at @e[type=snowball] run tp @e[tag=ball,limit=1] ~ ~-1.5 ~

# onGroundの処理を消す
tag @e[tag=ground] remove ground

# コーナー判定
function soccer:system/cornor
