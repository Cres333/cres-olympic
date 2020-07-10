# 敗北処理
clear @a

scoreboard players reset @s PLAY

scoreboard players set @s _GP 0

scoreboard players set $end _ 1

scoreboard players set @s _LOSER 1

## 吹き飛び用アマスタの召喚
execute as @p[predicate=util:play,y_rotation=-89.9..90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,4.0],Tags:["move"]}
execute as @p[predicate=util:play,y_rotation=-269.9..-90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,-4.0],Tags:["move"]}
