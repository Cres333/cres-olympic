# ボールを拾う
## ボールに追加のエフェクトを掛ける
particle minecraft:dragon_breath ~ ~ ~ 0.2 2 0.2 0 10 force

## ボールを持っているプレイヤーを検知
scoreboard players set @p[distance=..1,scores={_COOL=0}] _HAS 1

## ボールを持っているプレイヤーにボールを渡す
give @p[scores={_HAS=1}] snowball

## ボールを持っているプレイヤーにエフェクトを掛ける
effect clear @a[predicate=util:play] glowing
effect clear @p[scores={_HAS=1}] speed
effect give @p[scores={_HAS=1}] glowing 1000000 1 true
effect give @p[scores={_HAS=1}] speed 3 5 true

## ボールを持っていないプレイヤーにクールダウン発生
execute as @p[scores={_HAS=1}] at @s run scoreboard players set @a[distance=..5,scores={_HAS=0}] _COOL 60

## クールタイム用のエフェクトを消す
execute if entity @p[scores={_HAS=1}] run effect clear @a[scores={_COOL=1..}] luck
