# ライトが光るまで待つ
## 捨てた紙を削除
kill @e[type=item]

## ライトの点灯チェック (まだチームメンバーが確定していないライトのみ)
scoreboard players set $team _TICKET 0
scoreboard players set $end _TICKET 0

execute if score $r _TICKET matches 1.. if block 1006 31 -1468 redstone_lamp[lit=false] run scoreboard players set $r _TICKET 0
execute if score $b _TICKET matches 1.. if block 1112 31 -1224 redstone_lamp[lit=false] run scoreboard players set $b _TICKET 0
execute if score $y _TICKET matches 1.. if block 1131 31 -1449 redstone_lamp[lit=false] run scoreboard players set $y _TICKET 0
execute if score $g _TICKET matches 1.. if block 987 31 -1243 redstone_lamp[lit=false] run scoreboard players set $g _TICKET 0

execute if block 1006 31 -1468 redstone_lamp[lit=true] run scoreboard players add $r _TICKET 1
execute if block 1112 31 -1224 redstone_lamp[lit=true] run scoreboard players add $b _TICKET 1
execute if block 1131 31 -1449 redstone_lamp[lit=true] run scoreboard players add $y _TICKET 1
execute if block 987 31 -1243 redstone_lamp[lit=true] run scoreboard players add $g _TICKET 1

execute if score $r _TICKET matches 1 unless entity @p[team=r,predicate=util:join] run scoreboard players set $team _TICKET 1
execute if score $b _TICKET matches 1 unless entity @p[team=b,predicate=util:join] run scoreboard players set $team _TICKET 2
execute if score $y _TICKET matches 1 unless entity @p[team=y,predicate=util:join] run scoreboard players set $team _TICKET 3
execute if score $g _TICKET matches 1 unless entity @p[team=g,predicate=util:join] run scoreboard players set $team _TICKET 4

execute if score $team _TICKET matches 1.. run function util:select/priv/check-join

execute if score $end _TICKET matches 0 run schedule function util:select/wait/light 5t
execute if score $end _TICKET matches 1 run schedule function util:select/return 3s
