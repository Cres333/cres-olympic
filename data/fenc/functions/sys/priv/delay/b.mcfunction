# 花火3発目
execute as @a[scores={_LOSER=1}] at @s run summon firework_rocket ~20 ~15 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;2929486],FadeColors:[I;14602026]}],Flight:1}}}}
schedule function fenc:sys/priv/delay/c 5t