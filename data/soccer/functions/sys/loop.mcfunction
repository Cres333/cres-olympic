# クールダウンの時間を下げる
scoreboard players remove @a[scores={_COOL=1..}] _COOL 1

# クールダウン中を表示する
title @a[scores={_COOL=1..}] actionbar {"text":":: 現在、ボールを持てません ::","color":"red"}

# クールダウンが0ならリードを手に入れる
clear @a[scores={_COOL=1..},predicate=soccer:has-lead] lead
execute as @a[scores={_COOL=0,_HAS=0},predicate=!soccer:has-lead] run give @s lead

# 雪玉を検出した時の処理
execute if entity @e[type=snowball] run function soccer:sys/no-snow

# 空中にボールがある時、雪玉が見つからなかったら、地面に落とす
execute unless entity @e[type=snowball] unless entity @e[tag=ground] run function soccer:sys/snow

# ボールが地面にある時、持っているプレイヤーがいなかったら、ボールをもたせる
execute unless entity @p[scores={_HAS=1}] as @e[tag=ground] at @s positioned ~ ~1.5 ~ run function soccer:sys/has

# ボールを持っているプレイヤーがいたら、ボールを追っかけさせる
execute as @p[scores={_HAS=1}] at @s positioned ^ ^ ^2 run tp @e[tag=ground] ~ 30.7 ~

# ボールを持っているプレイヤーがいたら、ゴール判定
execute if entity @p[scores={_HAS=1}] run function soccer:sys/goal/check-direct

# ボールを持っているプレイヤーが叩かれたら、ボールを落とす
execute as @p[scores={_HAS=1},predicate=soccer:attack] run function soccer:sys/drop

# ボールを回転させる
execute as @e[tag=ball] at @s run tp @s ~ ~ ~ ~10 ~

# ボールにエフェクトを付ける
execute at @e[tag=ball] run particle happy_villager ~ ~1.5 ~ 0 0 0 0 1 force
