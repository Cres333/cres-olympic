# システム開始処理
## カウントダウン中に攻撃したらその選手を敗北
execute as @a[predicate=util:play,scores={_ATTACK=1..}] run scoreboard players set @s _GP 0
execute if entity @p[predicate=util:play,scores={_ATTACK=1..}] run function fenc:sys/priv/end

## 脱落者がいなかったらゲーム開始
scoreboard players reset * _DAMAGE
execute unless entity @p[predicate=util:play,scores={_ATTACK=1..}] run function fenc:sys/wait/loop
