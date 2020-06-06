execute store result score $teamNum _ run data get storage main teamNum

execute if entity @p[team=r,scores={JOIN=0..}] run scoreboard players remove $teamNum _ 1
execute if entity @p[team=b,scores={JOIN=0..}] run scoreboard players remove $teamNum _ 1
execute if entity @p[team=y,scores={JOIN=0..}] run scoreboard players remove $teamNum _ 1
execute if entity @p[team=g,scores={JOIN=0..}] run scoreboard players remove $teamNum _ 1

# コールバック呼び出し
execute if score $teamNum _ matches ..0 run function x:id/callback
