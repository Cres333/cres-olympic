# 残り1チーム以下のチェック
scoreboard players set $remain _ 0
scoreboard players set $end _ 0

execute if entity @p[team=r,predicate=util:play] run scoreboard players add $remain _ 1
execute if entity @p[team=b,predicate=util:play] run scoreboard players add $remain _ 1
execute if entity @p[team=y,predicate=util:play] run scoreboard players add $remain _ 1
execute if entity @p[team=g,predicate=util:play] run scoreboard players add $remain _ 1

execute if score $remain _ matches ..1 run scoreboard players set $end _ 1
