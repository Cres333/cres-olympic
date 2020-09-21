# 各waitを一括管理
function dodge:sys/wait/retire
function dodge:sys/wait/effect
function dodge:sys/wait/ball

execute as @a[gamemode=spectator,predicate=util:join] run schedule function draft:dodge/sys/priv/retry 3s

execute unless score $end _ matches 1 run schedule function draft:dodge/sys/wait/loop 1t
