# ゴールした走者の処理
## ゲームモード切替
gamemode spectator @s

## PLAYから外す
scoreboard players reset @s PLAY

## サイドバーから消す
scoreboard players reset @s _LIST

## タイマー(ポイント)を入れる
scoreboard players operation @s SCORE += $time _

## 最後の選手がゴールしたらメッセージ
execute if entity @s[scores={_R=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.r"}
execute if entity @s[scores={_B=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.b"}
execute if entity @s[scores={_Y=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.y"}
execute if entity @s[scores={_G=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.goal.g"}

## ゴールエフェクト
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100
execute if entity @s[team=r] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}
execute if entity @s[team=b] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;2437522],FadeColors:[I;6719955]}],Flight:1}}}}
execute if entity @s[team=y] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;14602026],FadeColors:[I;15435844]}],Flight:1}}}}
execute if entity @s[team=g] at @s run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;3887386],FadeColors:[I;4312372]}],Flight:1}}}}
