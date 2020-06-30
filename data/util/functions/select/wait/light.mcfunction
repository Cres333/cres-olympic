# ライトが光るまで待つ
## ライトの点灯チェック (まだチームメンバーが確定していないライトのみ)
scoreboard players set $team _TICKET 0
scoreboard players set $end _TEAM 0

execute if block 1006 31 -1468 redstone_lamp[lit=true] unless entity @p[team=r,predicate=util:join] run scoreboard players set $team _TICKET 1
execute if block 1112 31 -1224 redstone_lamp[lit=true] unless entity @p[team=b,predicate=util:join] run scoreboard players set $team _TICKET 2
execute if block 1131 31 -1449 redstone_lamp[lit=true] unless entity @p[team=y,predicate=util:join] run scoreboard players set $team _TICKET 3
execute if block 987 31 -1243 redstone_lamp[lit=true] unless entity @p[team=g,predicate=util:join] run scoreboard players set $team _TICKET 4

execute if score $team _TICKET matches 1.. run function util:select/priv/check-join

execute if score $end _TICKET matches 0 run schedule function util:select/wait/light 1s
execute if score $end _TICKET matches 1 run schedule function util:select/return 3s
