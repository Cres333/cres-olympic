# 選手を再度空に飛ばす
spreadplayers 1059 -1346 15 30 false @s
execute at @s run tp @s ~ 105 ~
replaceitem entity @s armor.chest elytra{Unbreakable:true}
effect give @s slow_falling 3 3 true
