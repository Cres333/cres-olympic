# ボールを持っていた人のエフェクトを消す
effect clear @p[scores={_HAS=1}] slowness

# 雪玉を検出したら、ボールを持っている人判定を消す
clear @a snowball
scoreboard players set @a[predicate=util:play] _HAS 0

# onGroundの処理を消す
tag @e[tag=ground] remove ground
