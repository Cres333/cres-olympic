# ライトが光るまで待つ
## ライトの点灯チェック (まだチームメンバーが確定していないライトのみ)
scoreboard players set $team _TICKET 0
execute if predicate util:light/red unless entity @p[team=r,predicate=util:join] run scoreboard players set $team _TICKET 1
execute if predicate util:light/blue unless entity @p[team=b,predicate=util:join] run scoreboard players set $team _TICKET 2
execute if predicate util:light/yellow unless entity @p[team=y,predicate=util:join] run scoreboard players set $team _TICKET 3
execute if predicate util:light/green unless entity @p[team=g,predicate=util:join] run scoreboard players set $team _TICKET 4

execute if score $team _TICKET matches 1.. run function util:select/priv/check-join
execute if score $team _TICKET matches 0 run schedule function util:select/wait/light 1s
