# スコアをメモリに加算する
scoreboard players operation $util:id _ = @s ID
scoreboard players operation $util:score _ = @s SCORE
execute as @e[tag=s] if score @s ARM_ID = $util:id _ run scoreboard players operation @s POINT += $util:score _
