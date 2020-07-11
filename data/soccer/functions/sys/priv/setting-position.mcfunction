# 各プレイヤーの位置を設定
execute as @a[predicate=util:play,gamemode=adventure] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

gamemode adventure @a[predicate=util:play]

tp @p[scores={_W=1}] 1059 32 -1332 180 0
tp @p[scores={_W=2}] 1065 32 -1326 180 0
tp @p[scores={_W=3}] 1053 32 -1326 180 0
tp @p[scores={_W=4}] 1059 32 -1302 180 0

tp @p[scores={_B=1}] 1059 32 -1360 0 0
tp @p[scores={_B=2}] 1053 32 -1366 0 0
tp @p[scores={_B=3}] 1065 32 -1366 0 0
tp @p[scores={_B=4}] 1059 32 -1390 0 0
