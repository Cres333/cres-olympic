# イベント検知
## クールダウン発生
scoreboard players set @a[predicate=util:play] _COOL 0
scoreboard players set @a[scores={_HAS=1}] _COOL 100

## ボール召喚
clear @a snowball
clear @a lead
kill @e[type=snowball]
summon snowball 1058 60 -1345

## ボールを落とす
execute at @p[scores={_HAS=1}] run spreadplayers ~ ~ 1 3 false @e[type=snowball]
execute as @e[type=snowball] at @s run tp @s ~ 35 ~

## ボール持っている判定を消す
scoreboard players set @a[predicate=util:play] _HAS 0

## イベント削除
advancement revoke @a only event:drop
