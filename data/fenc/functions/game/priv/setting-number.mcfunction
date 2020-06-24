# 背番号の設定
scoreboard players set @a[predicate=util:join] _ID 0

execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=r,scores={_ID=0}] _ID 1
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=r,scores={_ID=0}] _ID 2
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=b,scores={_ID=0}] _ID 3
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=b,scores={_ID=0}] _ID 4
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=y,scores={_ID=0}] _ID 5
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=y,scores={_ID=0}] _ID 6
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=g,scores={_ID=0}] _ID 7
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=g,scores={_ID=0}] _ID 8

execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 1
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 2
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 3
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 4
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 5
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 6
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 7
execute if data storage main {mode:single} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 8

# 各グループに振り分け
scoreboard players set @p[scores={_ID=1}] _GP 1
scoreboard players set @p[scores={_ID=5}] _GP 1
scoreboard players set @p[scores={_ID=3}] _GP 2
scoreboard players set @p[scores={_ID=7}] _GP 2
scoreboard players set @p[scores={_ID=6}] _GP 3
scoreboard players set @p[scores={_ID=4}] _GP 3
scoreboard players set @p[scores={_ID=8}] _GP 4
scoreboard players set @p[scores={_ID=2}] _GP 4

## もしグループnに二人いるならGPがnの二人をplayにして実行
scoreboard players set $gp _ 0
execute unless entity @p[predicate=util:play] run scoreboard players operation $gp _ += @a[scores={_GP=1}] JOIN
execute if score $gp _ matches 2 run scoreboard players set @a[scores={_GP=1}] PLAY 1

scoreboard players set $gp _ 0
execute unless entity @p[predicate=util:play] run scoreboard players operation $gp _ += @a[scores={_GP=2}] JOIN
execute if score $gp _ matches 2 run scoreboard players set @a[scores={_GP=2}] PLAY 1

scoreboard players set $gp _ 0
execute unless entity @p[predicate=util:play] run scoreboard players operation $gp _ += @a[scores={_GP=3}] JOIN
execute if score $gp _ matches 2 run scoreboard players set @a[scores={_GP=3}] PLAY 1

scoreboard players set $gp _ 0
execute unless entity @p[predicate=util:play] run scoreboard players operation $gp _ += @a[scores={_GP=4}] JOIN
execute if score $gp _ matches 2 run scoreboard players set @a[scores={_GP=4}] PLAY 1

## もし各グループに一人しかいないなら次に進める
execute unless entity @p[predicate=util:play] run schedule function fenc:game/priv/next-round 1t

execute if entity @p[predicate=util:play] run function fenc:sys/main
