# 結果表示
## チーム戦の場合、nメダルを獲得しましたを各チームに表示
execute if entity @p[team=r,predicate=util:join,scores={_MEDAL=1}] run tellraw @a[team=r] {"interpret":true,"storage":"lang","nbt":"util.score.gold"}
execute if entity @p[team=b,predicate=util:join,scores={_MEDAL=1}] run tellraw @a[team=b] {"interpret":true,"storage":"lang","nbt":"util.score.gold"}
execute if entity @p[team=y,predicate=util:join,scores={_MEDAL=1}] run tellraw @a[team=y] {"interpret":true,"storage":"lang","nbt":"util.score.gold"}
execute if entity @p[team=g,predicate=util:join,scores={_MEDAL=1}] run tellraw @a[team=g] {"interpret":true,"storage":"lang","nbt":"util.score.gold"}

execute if entity @p[team=r,predicate=util:join,scores={_MEDAL=2}] run tellraw @a[team=r] {"interpret":true,"storage":"lang","nbt":"util.score.silver"}
execute if entity @p[team=b,predicate=util:join,scores={_MEDAL=2}] run tellraw @a[team=b] {"interpret":true,"storage":"lang","nbt":"util.score.silver"}
execute if entity @p[team=y,predicate=util:join,scores={_MEDAL=2}] run tellraw @a[team=y] {"interpret":true,"storage":"lang","nbt":"util.score.silver"}
execute if entity @p[team=g,predicate=util:join,scores={_MEDAL=2}] run tellraw @a[team=g] {"interpret":true,"storage":"lang","nbt":"util.score.silver"}

execute if entity @p[team=r,predicate=util:join,scores={_MEDAL=3}] run tellraw @a[team=r] {"interpret":true,"storage":"lang","nbt":"util.score.bronze"}
execute if entity @p[team=b,predicate=util:join,scores={_MEDAL=3}] run tellraw @a[team=b] {"interpret":true,"storage":"lang","nbt":"util.score.bronze"}
execute if entity @p[team=y,predicate=util:join,scores={_MEDAL=3}] run tellraw @a[team=y] {"interpret":true,"storage":"lang","nbt":"util.score.bronze"}
execute if entity @p[team=g,predicate=util:join,scores={_MEDAL=3}] run tellraw @a[team=g] {"interpret":true,"storage":"lang","nbt":"util.score.bronze"}
