# 選手をTPする
## ゲームモード変更
gamemode adventure @a[predicate=util:play]

## 白側
execute as @p[predicate=util:play,scores={_GP=10}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=20}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=30}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=40}] run tp @s 0 0 0 0 0

## 黒側
execute as @p[predicate=util:play,scores={_GP=11}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=21}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=31}] run tp @s 0 0 0 0 0
execute as @p[predicate=util:play,scores={_GP=41}] run tp @s 0 0 0 0 0
