# 途中でログインした場合
execute if entity @s[gamemode=spectator,predicate=relay:2,scores={SCORE=0}] run gamemode adventure @s

execute if entity @s[gamemode=spectator,scores={_R=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_R=1}] run gamemode adventure @s[scores={_R=3}]
execute if entity @s[gamemode=spectator,scores={_B=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_B=1}] run gamemode adventure @s[scores={_B=3}]
execute if entity @s[gamemode=spectator,scores={_Y=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_Y=1}] run gamemode adventure @s[scores={_Y=3}]
execute if entity @s[gamemode=spectator,scores={_G=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_G=1}] run gamemode adventure @s[scores={_G=3}]
execute if entity @s[gamemode=spectator,scores={_R=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_R=1}] run tp @p[scores={_R=3}] 1096.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_B=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_B=1}] run tp @p[scores={_B=3}] 1099.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_Y=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_Y=1}] run tp @p[scores={_Y=3}] 1102.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_G=3,SCORE=0}] unless entity @p[gamemode=adventure,scores={_G=1}] run tp @p[scores={_G=3}] 1105.0 33 -1347.0 180 0

execute if entity @s[gamemode=spectator,scores={_R=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_R=2}] run gamemode adventure @s[scores={_R=4}]
execute if entity @s[gamemode=spectator,scores={_B=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_B=2}] run gamemode adventure @s[scores={_B=4}]
execute if entity @s[gamemode=spectator,scores={_Y=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_Y=2}] run gamemode adventure @s[scores={_Y=4}]
execute if entity @s[gamemode=spectator,scores={_G=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_G=2}] run gamemode adventure @s[scores={_G=4}]
execute if entity @s[gamemode=spectator,scores={_R=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_R=2}] run tp @p[scores={_R=4}] 1096.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_B=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_B=2}] run tp @p[scores={_B=4}] 1099.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_Y=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_Y=2}] run tp @p[scores={_Y=4}] 1102.0 33 -1347.0 180 0
execute if entity @s[gamemode=spectator,scores={_G=4,SCORE=0}] unless entity @p[gamemode=adventure,scores={_G=2}] run tp @p[scores={_G=4}] 1105.0 33 -1347.0 180 0

## 走り出してよいかチェック
execute if entity @s[gamemode=adventure,scores={_R=2,SCORE=0}] unless entity @p[predicate=util:play,scores={_R=1}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_B=2,SCORE=0}] unless entity @p[predicate=util:play,scores={_B=1}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_Y=2,SCORE=0}] unless entity @p[predicate=util:play,scores={_Y=1}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_G=2,SCORE=0}] unless entity @p[predicate=util:play,scores={_G=1}] run scoreboard players set @s PLAY 1

execute if entity @s[gamemode=adventure,scores={_R=3}] unless entity @p[predicate=util:play,scores={_R=1..2}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_B=3}] unless entity @p[predicate=util:play,scores={_B=1..2}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_Y=3}] unless entity @p[predicate=util:play,scores={_Y=1..2}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_G=3}] unless entity @p[predicate=util:play,scores={_G=1..2}] run scoreboard players set @s PLAY 1

execute if entity @s[gamemode=adventure,scores={_R=4}] unless entity @p[predicate=util:play,scores={_R=1..3}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_B=4}] unless entity @p[predicate=util:play,scores={_B=1..3}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_Y=4}] unless entity @p[predicate=util:play,scores={_Y=1..3}] run scoreboard players set @s PLAY 1
execute if entity @s[gamemode=adventure,scores={_G=4}] unless entity @p[predicate=util:play,scores={_G=1..3}] run scoreboard players set @s PLAY 1

## サイドバーに追加する
scoreboard players set @s[predicate=util:play,predicate=relay:2] _LIST 2
scoreboard players set @s[predicate=util:play,predicate=relay:3] _LIST 3
scoreboard players set @s[predicate=util:play,predicate=relay:4] _LIST 4

## 現在のタイムをマイナス値として入れる
execute if entity @s[predicate=util:play] run scoreboard players operation @s SCORE -= $time _
