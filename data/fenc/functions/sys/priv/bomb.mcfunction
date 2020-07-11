# 敗者を爆発
## ループ解除
schedule clear fenc:sys/wait/bomb
kill @e[tag=move]

## 爆発
execute as @a[scores={_LOSER=1}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Flicker:1,Colors:[I;11743532],FadeColors:[I;14602026]}],Flight:1}}}}

## ゲームモード変更
gamemode spectator @a[scores={_LOSER=1}]

## リセット
scoreboard players reset * _LOSER

## 終了処理
schedule function fenc:sys/priv/end 3s
