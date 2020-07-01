# カウントダウン中の攻撃判定
## スコアリセット
scoreboard players reset * _ATTACK
scoreboard players reset * _DAMAGE
scoreboard players set @a[predicate=util:play] _ATTACK 0
scoreboard players set @a[predicate=util:play] _DAMAGE 0

function fenc:sys/wait/count
