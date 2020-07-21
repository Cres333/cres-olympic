# 投げた人にクールダウン
effect clear @a[scores={_HAS=1}] luck
scoreboard players set @a[scores={_HAS=1}] _COOL 100

# フラグを消す
effect clear @a[predicate=util:play] speed
scoreboard players set @a[predicate=util:play] _HAS 0
effect give @a[predicate=util:play] speed 1000000 3 true

# アイテムを消す
clear @a snowball

# onGroundの処理を消す
tag @e[tag=ground] remove ground
