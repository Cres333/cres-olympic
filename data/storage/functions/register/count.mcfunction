# カウントをメモリに登録する
scoreboard players operation $util:id _ = @s ID
execute as @e[tag=s] if score @s ARM_ID = $util:id _ run scoreboard players add @s COUNT 1
