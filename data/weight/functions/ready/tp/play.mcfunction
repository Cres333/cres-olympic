# ゲームモード変更
gamemode adventure @a[predicate=util:play]

# 各位置に配置
tp @p[scores={_ID=1}] 1059 33 -1359
tp @p[scores={_ID=2}] 1059 33 -1333
tp @p[scores={_ID=3}] 1072 33 -1346
tp @p[scores={_ID=4}] 1046 33 -1346
tp @p[scores={_ID=5}] 1068 33 -1355
tp @p[scores={_ID=6}] 1050 33 -1337
tp @p[scores={_ID=7}] 1068 33 -1337
tp @p[scores={_ID=8}] 1050 33 -1355

# 中央を向くように変更
execute as @a[predicate=util:play] at @s run tp @s ~ ~ ~ facing 1059 33 -1346
