# ラウンドごとに旗チェック
scoreboard players set $set _ 0
scoreboard players operation $set _ += @a[predicate=util:play] _PLACE

execute if score $round _ matches 1 if score $set _ matches 4 run scoreboard players set $end _ 1
execute if score $round _ matches 2 if score $set _ matches 3 run scoreboard players set $end _ 1
execute if score $round _ matches 3 if score $set _ matches 2 run scoreboard players set $end _ 1
execute if score $round _ matches 4 if score $set _ matches 1 run scoreboard players set $end _ 1
