# イベント検知
execute if data storage main {game:soccer} if entity @s[predicate=util:play] run function soccer:sys/priv/drop
advancement revoke @s only event:soccer/drop
