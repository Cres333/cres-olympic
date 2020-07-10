# ボールにあたった時の処理
execute if data storage main {game:dodge} if entity @s[predicate=util:play] run function dodge:sys/priv/out
advancement revoke @s only event:dodge/out
