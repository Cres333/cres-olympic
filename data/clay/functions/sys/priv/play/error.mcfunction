# リタイア処理
clear @a crossbow
clear @a arrow
kill @e[type=item]
kill @e[type=creeper]
kill @e[type=arrow]
scoreboard players set $summon _ 10

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"clay.retire"}
