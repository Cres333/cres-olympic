# 敗北処理
clear @a

scoreboard players reset @s PLAY

## 1ラウンド目の敗者は脱落
execute if score $round _ matches 1 run scoreboard players reset @s _GP

## 2ラウンド目の敗者は敗者復活(2ラウンド/3グループ目)に進ませる
execute if score $round _ matches 2 run scoreboard players set @s[scores={_GP=10..11}] _GP 30
execute if score $round _ matches 2 run scoreboard players set @s[scores={_GP=20..21}] _GP 31

scoreboard players set $end _ 1

scoreboard players set @s _LOSER 1

## 吹き飛び用アマスタの召喚
execute as @p[predicate=util:play,y_rotation=-89.9..90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,4.0],Tags:["move"]}
execute as @p[predicate=util:play,y_rotation=-269.9..-90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,-4.0],Tags:["move"]}
