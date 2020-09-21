# システム開始処理
## スタートのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.start.all"}

scoreboard players reset * _USE
scoreboard players set @a[predicate=util:play] _COOL 0

function sky:sys/wait/loop
