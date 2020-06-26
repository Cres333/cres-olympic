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
scoreboard players set @p[scores={_ID=1}] _GP 10
scoreboard players set @p[scores={_ID=5}] _GP 11
scoreboard players set @p[scores={_ID=3}] _GP 20
scoreboard players set @p[scores={_ID=7}] _GP 21
scoreboard players set @p[scores={_ID=6}] _GP 30
scoreboard players set @p[scores={_ID=4}] _GP 31
scoreboard players set @p[scores={_ID=8}] _GP 40
scoreboard players set @p[scores={_ID=2}] _GP 41
