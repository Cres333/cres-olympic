# 競技を呼び出す
execute if score $game _NEXT matches 1 run function battle:init
execute if score $game _NEXT matches 2 run function boat:init
execute if score $game _NEXT matches 3 run function clay:init
execute if score $game _NEXT matches 4 run function dodge:init
execute if score $game _NEXT matches 5 run function fenc:init
execute if score $game _NEXT matches 6 run function relay:init
execute if score $game _NEXT matches 7 run function soccer:init
execute if score $game _NEXT matches 8 run function swim:init
execute if score $game _NEXT matches 9 run function weight:init
execute if score $game _NEXT matches 10 run function sky:init

scoreboard objectives remove _NEXT