# 選手をTPする
## ゲームモード変更
gamemode adventure @a[predicate=util:play]

## TP
spreadplayers 1059 -1346 15 30 false @a[predicate=util:play]
execute as @a[predicate=util:play] at @s run tp @s ~ 105 ~ facing 1059 105 -1346
