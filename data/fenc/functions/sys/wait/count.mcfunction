# カウントダウン中に攻撃したらその選手を敗北
execute as @a[predicate=util:play,scores={_ATTACK=1..}] run scoreboard players set @s _GP 0

execute unless entity @p[predicate=util:play,scores={_ATTACK=1..}] run schedule function fenc:sys/wait/count 1t
execute if entity @p[predicate=util:play,scores={_ATTACK=1..}] run function fenc:sys/priv/end
