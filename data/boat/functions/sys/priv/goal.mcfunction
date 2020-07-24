# ゴール処理
scoreboard players operation $temp _ = @s _ID

# チームスコアも更新
execute if entity @s[team=r] run scoreboard players operation $r SCORE = $time _
execute if entity @s[team=b] run scoreboard players operation $b SCORE = $time _
execute if entity @s[team=y] run scoreboard players operation $y SCORE = $time _
execute if entity @s[team=g] run scoreboard players operation $g SCORE = $time _

kill @e[type=boat,distance=..2,limit=1,sort=nearest]
kill @e[tag=rider,distance=..2,limit=1,sort=nearest]
gamemode spectator @s
scoreboard players operation @s SCORE = $time _
scoreboard players reset @s PLAY

## 最後の選手がゴールしたらメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.goal.single"}

## ゴールエフェクト(シングルも同じ)
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100
execute if entity @s[team=r] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}
execute if entity @s[team=b] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;2437522],FadeColors:[I;6719955]}],Flight:1}}}}
execute if entity @s[team=y] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;14602026],FadeColors:[I;15435844]}],Flight:1}}}}
execute if entity @s[team=g] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;3887386],FadeColors:[I;4312372]}],Flight:1}}}}
