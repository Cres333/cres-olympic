# 次の選手を選択
## 初期化
scoreboard players add $current _ID 1

## 選択
execute as @p[scores={_ID=1}] if score $current _ID matches 1 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=2}] if score $current _ID matches 2 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=3}] if score $current _ID matches 3 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=4}] if score $current _ID matches 4 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=5}] if score $current _ID matches 5 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=6}] if score $current _ID matches 6 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=7}] if score $current _ID matches 7 run scoreboard players set @s PLAY 1
execute as @p[scores={_ID=8}] if score $current _ID matches 8 run scoreboard players set @s PLAY 1

## 次のプレイヤーがいる
execute if entity @p[predicate=util:play] run scoreboard players set $next _ 1

## もしいなければ8回までループ
execute if score $next _ matches 0 if score $current _ matches ..8 run function clay:game/priv/next-player
