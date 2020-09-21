# 各waitを一括管理
function dodge:sys/wait/retire
function dodge:sys/wait/effect
function dodge:sys/wait/ball

scoreboard players remove @a[gamemode=spectator,predicate=util:join] _ 1
scoreboard players set @a[gamemode=spectator,predicate=util:join,scores={_=..-1}] _ 100
execute as @p[gamemode=spectator,predicate=util:join,scores={_=0}] run function draft:dodge/sys/priv/retry

execute unless score $end _ matches 1 run schedule function draft:dodge/sys/wait/loop 1t
