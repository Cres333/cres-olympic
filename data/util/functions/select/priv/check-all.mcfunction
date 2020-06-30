# 参加
## スコアボードを用意
scoreboard players set $detect _TICKET 0

## 誰か検知されるまでチェック
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=0}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=1}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=2}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=3}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=4}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=5}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=6}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=7}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=8}] JOIN 1
execute if score $detect _TICKET matches 0 run scoreboard players set @r[limit=1,predicate=util:join,scores={_TICKET=1,COUNT=9}] JOIN 1

## スコアボード削除
scoreboard players reset $detect _TICKET
