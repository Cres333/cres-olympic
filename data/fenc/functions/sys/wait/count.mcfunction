# カウントダウン中に攻撃したらその選手を敗北
execute as @p[predicate=util:play,scores={_ATTACK=1..}] run function fenc:sys/priv/lose

## 移動エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0 0.25 0 1

execute if score $end _ matches 0 run schedule function fenc:sys/wait/count 1t
execute if score $end _ matches 1 run function fenc:sys/priv/bomb
