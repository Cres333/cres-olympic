# ライトが光るまで待つ
## ライトの点灯チェック (まだチームメンバーが確定していないライトのみ)
scoreboard players set $team _TICKET 0
execute if predicate util:light/red unless entity @p[team=red,scores={JOIN=1..}] run scoreboard players set $team _TICKET 1
execute if predicate util:light/blue unless entity @p[team=blue,scores={JOIN=1..}] run scoreboard players set $team _TICKET 2
execute if predicate util:light/yellow unless entity @p[team=yellow,scores={JOIN=1..}] run scoreboard players set $team _TICKET 3
execute if predicate util:light/green unless entity @p[team=green,scores={JOIN=1..}] run scoreboard players set $team _TICKET 4

execute if score $team _TICKET matches 1.. run function util:select/priv/check-join
execute if score $team _TICKET matches 0 run function util:select/wait/light
