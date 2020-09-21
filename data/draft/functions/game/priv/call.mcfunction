# 競技を呼び出す
execute if score $game _NEXT matches 1 run function draft:battle/init
execute if score $game _NEXT matches 2 run function draft:boat/init
execute if score $game _NEXT matches 3 run function draft:clay/init
execute if score $game _NEXT matches 4 run function draft:dodge/init
execute if score $game _NEXT matches 5 run function draft:fenc/init
execute if score $game _NEXT matches 6 run function draft:relay/init
execute if score $game _NEXT matches 7 run function draft:soccer/init
execute if score $game _NEXT matches 8 run function draft:swim/init
execute if score $game _NEXT matches 9 run function draft:weight/init
execute if score $game _NEXT matches 10 run function draft:sky/init

scoreboard objectives remove _NEXT
