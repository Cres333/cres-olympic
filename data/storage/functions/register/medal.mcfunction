# メダルをメモリに加算する
scoreboard players operation $util:id _ = @s ID
scoreboard players operation $util:medal _ = @s _MEDAL

execute if score $util:medal _ matches 1 as @e[tag=m] if score @s ARM_ID = $util:id _ run scoreboard players add @s GOLD 1
execute if score $util:medal _ matches 2 as @e[tag=m] if score @s ARM_ID = $util:id _ run scoreboard players add @s SILVER 1
execute if score $util:medal _ matches 3 as @e[tag=m] if score @s ARM_ID = $util:id _ run scoreboard players add @s BRONZE 1
