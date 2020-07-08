# スコアをプレイヤーにセットする
scoreboard players operation $util:id _ = @s ARM_ID
scoreboard players operation $util:score _ = @s POINT
execute as @a[scores={ID=1..}] if score @s ID = $util:id _ run scoreboard players operation @s SCORE = $util:score _
