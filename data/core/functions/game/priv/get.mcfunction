# 競技を取得する
## 取得
data remove storage play now
data modify storage play now set from storage play playing[0].type
data remove storage play playing[0]

## 設定
execute if data storage play {now:battle} run scoreboard players set $game _NEXT 1
execute if data storage play {now:boat} run scoreboard players set $game _NEXT 2
execute if data storage play {now:clay} run scoreboard players set $game _NEXT 3
execute if data storage play {now:dodge} run scoreboard players set $game _NEXT 4
execute if data storage play {now:fenc} run scoreboard players set $game _NEXT 5
execute if data storage play {now:relay} run scoreboard players set $game _NEXT 6
execute if data storage play {now:soccer} run scoreboard players set $game _NEXT 7
execute if data storage play {now:swim} run scoreboard players set $game _NEXT 8
execute if data storage play {now:weight} run scoreboard players set $game _NEXT 9
execute if data storage play {now:sky} run scoreboard players set $game _NEXT 10
