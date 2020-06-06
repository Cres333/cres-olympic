# ゲームモード変更
gamemode adventure @a[predicate=util:play]

# 各位置に配置
tp @p[scores={JOIN=0}] 1059 33 -1359
tp @p[scores={JOIN=1}] 1059 33 -1333
tp @p[scores={JOIN=2}] 1072 33 -1346
tp @p[scores={JOIN=3}] 1046 33 -1346
tp @p[scores={JOIN=4}] 1068 33 -1355
tp @p[scores={JOIN=5}] 1050 33 -1337
tp @p[scores={JOIN=6}] 1068 33 -1337
tp @p[scores={JOIN=7}] 1050 33 -1355

# 中央を向くように変更
execute as @a[predicate=util:play] at @s run tp @s ~ ~ ~ facing 1059 33 -1346
