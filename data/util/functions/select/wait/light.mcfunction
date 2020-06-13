# ライトが光るまで待つ
## ライトの点灯チェック
scoreboard players set $team _TICKET 0
execute if predicate util:light/red run scoreboard players set $team _TICKET 1
execute if predicate util:light/blue run scoreboard players set $team _TICKET 2
execute if predicate util:light/yellow run scoreboard players set $team _TICKET 3
execute if predicate util:light/green run scoreboard players set $team _TICKET 4

execute if score $team _TICKET matches 1.. run function util:select/check-join
execute if score $team _TICKET matches 0 run function util:select/wait/light
