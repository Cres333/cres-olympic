# 台から降りたら強制終了
execute as @p[predicate=util:play] at @s align xz unless block ~ 32 ~ quartz_slab run function clay:sys/priv/play/error

# クリーパーのエフェクト
execute as @e[type=creeper] at @s run particle minecraft:cloud ~ ~ ~-1 0 0 0 0 3

execute if score $summon _ matches ..9 run schedule function clay:sys/wait/error 5t
