## 確定メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.select.complete"}

execute if data storage play games[{"type":"clay"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"clay.title"}
execute if data storage play games[{"type":"boat"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.title"}
execute if data storage play games[{"type":"soccer"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"soccer.title"}
execute if data storage play games[{"type":"fenc"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.title"}
execute if data storage play games[{"type":"swim"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.title"}
execute if data storage play games[{"type":"dodge"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"dodge.title"}
execute if data storage play games[{"type":"weight"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"weight.title"}
execute if data storage play games[{"type":"battle"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"battle.title"}
execute if data storage play games[{"type":"relay"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.title"}
execute if data storage play games[{"type":"sky"}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.title"}

tellraw @a {"text":""}
