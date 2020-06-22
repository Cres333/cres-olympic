# プレイヤー選択
execute unless entity @p[team=r,predicate=util:play] run scoreboard players add $now _R 1
execute unless entity @p[team=b,predicate=util:play] run scoreboard players add $now _B 1
execute unless entity @p[team=y,predicate=util:play] run scoreboard players add $now _Y 1
execute unless entity @p[team=g,predicate=util:play] run scoreboard players add $now _G 1

execute if score $now _R matches 1 run scoreboard players set @p[team=r,scores={_R=1}] PLAY 1
execute if score $now _R matches 2 run scoreboard players set @p[team=r,scores={_R=2}] PLAY 1
execute if score $now _R matches 3 run scoreboard players set @p[team=r,scores={_R=3}] PLAY 1
execute if score $now _R matches 4 run scoreboard players set @p[team=r,scores={_R=4}] PLAY 1
execute if score $now _R matches 5 run scoreboard players set @p[team=r,scores={_R=5}] PLAY 1
execute if score $now _R matches 6 run scoreboard players set @p[team=r,scores={_R=6}] PLAY 1
execute if score $now _R matches 7 run scoreboard players set @p[team=r,scores={_R=7}] PLAY 1
execute if score $now _R matches 8 run scoreboard players set @p[team=r,scores={_R=8}] PLAY 1

execute if score $now _B matches 1 run scoreboard players set @p[team=b,scores={_B=1}] PLAY 1
execute if score $now _B matches 2 run scoreboard players set @p[team=b,scores={_B=2}] PLAY 1
execute if score $now _B matches 3 run scoreboard players set @p[team=b,scores={_B=3}] PLAY 1
execute if score $now _B matches 4 run scoreboard players set @p[team=b,scores={_B=4}] PLAY 1
execute if score $now _B matches 5 run scoreboard players set @p[team=b,scores={_B=5}] PLAY 1
execute if score $now _B matches 6 run scoreboard players set @p[team=b,scores={_B=6}] PLAY 1
execute if score $now _B matches 7 run scoreboard players set @p[team=b,scores={_B=7}] PLAY 1
execute if score $now _B matches 8 run scoreboard players set @p[team=b,scores={_B=8}] PLAY 1

execute if score $now _Y matches 1 run scoreboard players set @p[team=y,scores={_Y=1}] PLAY 1
execute if score $now _Y matches 2 run scoreboard players set @p[team=y,scores={_Y=2}] PLAY 1
execute if score $now _Y matches 3 run scoreboard players set @p[team=y,scores={_Y=3}] PLAY 1
execute if score $now _Y matches 4 run scoreboard players set @p[team=y,scores={_Y=4}] PLAY 1
execute if score $now _Y matches 5 run scoreboard players set @p[team=y,scores={_Y=5}] PLAY 1
execute if score $now _Y matches 6 run scoreboard players set @p[team=y,scores={_Y=6}] PLAY 1
execute if score $now _Y matches 7 run scoreboard players set @p[team=y,scores={_Y=7}] PLAY 1
execute if score $now _Y matches 8 run scoreboard players set @p[team=y,scores={_Y=8}] PLAY 1

execute if score $now _G matches 1 run scoreboard players set @p[team=g,scores={_G=1}] PLAY 1
execute if score $now _G matches 2 run scoreboard players set @p[team=g,scores={_G=2}] PLAY 1
execute if score $now _G matches 3 run scoreboard players set @p[team=g,scores={_G=3}] PLAY 1
execute if score $now _G matches 4 run scoreboard players set @p[team=g,scores={_G=4}] PLAY 1
execute if score $now _G matches 5 run scoreboard players set @p[team=g,scores={_G=5}] PLAY 1
execute if score $now _G matches 6 run scoreboard players set @p[team=g,scores={_G=6}] PLAY 1
execute if score $now _G matches 7 run scoreboard players set @p[team=g,scores={_G=7}] PLAY 1
execute if score $now _G matches 8 run scoreboard players set @p[team=g,scores={_G=8}] PLAY 1
