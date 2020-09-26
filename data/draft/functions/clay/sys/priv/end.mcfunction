# 終了処理
## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## 会場を掃除
clear @a crossbow
clear @a arrow
kill @e[type=item]
kill @e[type=creeper]
kill @e[type=arrow]

## 次のプレイヤーを選別
execute as @p[predicate=util:play] at @s run tag @p[predicate=util:join,gamemode=spectator] add next
execute unless entity @p[tag=next] run tag @p[predicate=util:play] add next

## ゲームモードを変更
gamemode spectator @p[predicate=util:play]

## PLAYから除外
scoreboard players reset * PLAY

## メッセージ
tellraw @a {"color":"yellow","text":"[下見] 競技中のプレイヤーから最も近いプレイヤーが次の選手に選ばれます"}

## 次の選手へ
schedule function draft:clay/sys/main 1s
