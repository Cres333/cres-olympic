# 敗北処理
schedule clear util:count/loop
clear @a iron_sword

scoreboard players reset @s PLAY

## 2ラウンド目の敗者は敗者復活(2ラウンド/3グループ目)に進ませる
execute if score $round _ matches 2 if score $gp _ matches 1 run scoreboard players set @s _GP 30
execute if score $round _ matches 2 if score $gp _ matches 2 run scoreboard players set @s _GP 31

## それ以外の敗者は脱落
execute unless score $round _ matches 2 run scoreboard players reset @s _GP
execute if score $round _ matches 2 unless score $gp _ matches 1..2 run scoreboard players reset @s _GP

scoreboard players set $end _ 1

scoreboard players set @s _LOSER 1

## 吹き飛び用アマスタの召喚
execute as @p[predicate=util:play,y_rotation=-89.9..90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,4.0],Tags:["move"]}
execute as @p[predicate=util:play,y_rotation=-269.9..-90.0] at @s run summon armor_stand ^ ^ ^2 {Invisible:true,Invulnerable:true,Motion:[0.0,3.0,-4.0],Tags:["move"]}
