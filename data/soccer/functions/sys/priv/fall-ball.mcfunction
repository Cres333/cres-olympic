# ボールを地面に落とす
execute as @e[tag=ball,limit=1] at @s run tp @s ~ 30.7 ~
tag @e[tag=ball] add ground
