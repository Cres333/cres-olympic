# ボールを持っていた人のエフェクトを消す
effect clear @p[scores={_HAS=1}]

# ボールを持っていた人にクールダウン発生
scoreboard players set @a[scores={_HAS=1}] _COOL 100

# 雪玉を検出したら、ボールを持っている人判定を消す
clear @a snowball
scoreboard players set @a[predicate=util:play] _HAS 0

# onGroundの処理を消す
tag @e[tag=ground] remove ground
