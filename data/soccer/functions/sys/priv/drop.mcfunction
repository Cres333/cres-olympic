# イベント検知
## ボール持っている判定を消す
effect clear @a[predicate=util:play] speed
scoreboard players set @a[predicate=util:play] _HAS 0
scoreboard players set @s _HAS 1

## エフェクト付与
effect give @a[scores={_HAS=1}] speed 3 5 true
effect give @a[scores={_HAS=0}] speed 1000000 3 true

## 雪玉を渡す
kill @e[type=item]
clear @a snowball
give @s snowball

## クールダウン発生
execute at @s run scoreboard players set @a[distance=..10,scores={_HAS=0}] _COOL 100
effect clear @a[scores={_COOL=1..}] luck
