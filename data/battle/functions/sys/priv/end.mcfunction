# 終了処理
## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモード変更
gamemode spectator @a

## 装備削除
clear @a diamond_sword
kill @e[type=item]

## スケジュール削除
schedule clear battle:sys/priv/field/1
schedule clear battle:sys/priv/field/2
schedule clear battle:sys/priv/field/3
schedule clear battle:sys/wait/effect

## PLAYとなっているプレイヤーにスコア追加
scoreboard players add @a[predicate=util:play] SCORE 20
scoreboard players add @a[predicate=util:play] _WIN 1

## 勝ち抜きメッセージ
execute if entity @p[predicate=util:play] run tellraw @a {"interpret":true,"storage":"lang","nbt":"battle.win"}
execute unless entity @p[predicate=util:play] run tellraw @a {"interpret":true,"storage":"lang","nbt":"battle.even"}

## 勝ち抜きエフェクト
execute if entity @p[predicate=util:play,team=r] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}
execute if entity @p[predicate=util:play,team=b] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;2437522],FadeColors:[I;6719955]}],Flight:1}}}}
execute if entity @p[predicate=util:play,team=y] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;14602026],FadeColors:[I;15435844]}],Flight:1}}}}
execute if entity @p[predicate=util:play,team=g] run summon firework_rocket ~ 42 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Colors:[I;3887386],FadeColors:[I;4312372]}],Flight:1}}}}

## 次の試合
function battle:game/next
