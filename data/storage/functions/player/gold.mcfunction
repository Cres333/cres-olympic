# スコアをプレイヤーにセットする
scoreboard players operation $util:id _ = @s ARM_ID
scoreboard players operation $util:gold _ = @s GOLD
execute as @a[scores={ID=1..}] if score @s ID = $util:id _ run scoreboard players operation @s _GOLD = $util:gold _
