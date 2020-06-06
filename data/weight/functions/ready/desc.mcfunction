# チーム戦以外は最後の文章を省略
execute if score $desc _ matches 1 unless data storage main {mode:multi} run scoreboard players set $desc _ 0

# ゲーム説明
execute if score $desc _ matches 9 run tellraw @a {"interpret":true,"nbt":"weight.desc[8]","storage":"lang"}
execute if score $desc _ matches 8 run tellraw @a {"interpret":true,"nbt":"weight.desc[7]","storage":"lang"}
execute if score $desc _ matches 7 run tellraw @a {"interpret":true,"nbt":"weight.desc[6]","storage":"lang"}
execute if score $desc _ matches 6 run tellraw @a {"interpret":true,"nbt":"weight.desc[5]","storage":"lang"}
execute if score $desc _ matches 5 run tellraw @a {"interpret":true,"nbt":"weight.desc[4]","storage":"lang"}
execute if score $desc _ matches 4 run tellraw @a {"interpret":true,"nbt":"weight.desc[3]","storage":"lang"}
execute if score $desc _ matches 3 run tellraw @a {"interpret":true,"nbt":"weight.desc[2]","storage":"lang"}
execute if score $desc _ matches 2 run tellraw @a {"interpret":true,"nbt":"weight.desc[1]","storage":"lang"}
execute if score $desc _ matches 1 run tellraw @a {"interpret":true,"nbt":"weight.desc[0]","storage":"lang"}

# ループ
scoreboard players remove $desc _ 1
execute if score $desc _ matches 0.. run schedule function weight:ready/desc 4s
execute unless score $desc _ matches 0.. run function weight:ready/select/x
