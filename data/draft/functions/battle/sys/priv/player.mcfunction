# 追加する項目
scoreboard players reset @s _DEATH
spreadplayers 1059 -1346 3 6 false @s
execute at @s run tp @s ~ 48 ~ facing 1059 42 -1346
gamemode adventure @s
give @s diamond_sword{Enchantments:[{id:"minecraft:knockback",lvl:2}]}
scoreboard players set @s PLAY 1
