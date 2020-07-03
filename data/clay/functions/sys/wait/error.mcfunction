# 台から降りたら強制終了
execute as @p[predicate=util:play] at @s if block ~ ~-2 ~ red_concrete run function clay:sys/priv/play/error

execute if score $summon _ matches ..9 run schedule function clay:sys/wait/error 5t
