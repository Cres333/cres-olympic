# 競技名の表示
execute if data storage play {"show":"clay"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"clay.title"}
execute if data storage play {"show":"boat"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.title"}
execute if data storage play {"show":"soccer"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"soccer.title"}
execute if data storage play {"show":"fenc"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.title"}
execute if data storage play {"show":"swim"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.title"}
execute if data storage play {"show":"dodge"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"dodge.title"}
execute if data storage play {"show":"weight"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"weight.title"}
execute if data storage play {"show":"battle"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"battle.title"}
execute if data storage play {"show":"relay"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.title"}
execute if data storage play {"show":"sky"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.title"}
execute if data storage play {"show":"beach"} run tellraw @a {"interpret":true,"storage":"lang","nbt":"beach.title"}

# 表示したらリセット
data remove storage play show
