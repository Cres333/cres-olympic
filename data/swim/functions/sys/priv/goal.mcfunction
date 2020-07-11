# ゴールした泳者の処理
## ゲームモード切替
gamemode spectator @s

## PLAYから外す
scoreboard players reset @s PLAY

## アイテムを消す
clear @s

## エフェクトを消す
effect clear @s water_breathing

## タイマー(ポイント)を追加で入れる
scoreboard players operation @s SCORE += $time _

## 最後の選手がゴールしたらメッセージ
execute if entity @s[scores={_R=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.r"}
execute if entity @s[scores={_B=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.b"}
execute if entity @s[scores={_Y=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.y"}
execute if entity @s[scores={_G=4}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.goal.g"}

## ゴールエフェクト
execute if entity @s[team=r] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}
execute if entity @s[team=b] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;2437522],FadeColors:[I;6719955]}],Flight:1}}}}
execute if entity @s[team=y] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;14602026],FadeColors:[I;15435844]}],Flight:1}}}}
execute if entity @s[team=g] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;3887386],FadeColors:[I;4312372]}],Flight:1}}}}
