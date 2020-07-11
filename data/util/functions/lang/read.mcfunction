# チーム戦以外は最後の文章を省略
execute if score $desc _ matches 1 unless data storage main {mode:multi} run scoreboard players set $desc _ 0

# ゲーム説明
execute if score $desc _ matches 15 run tellraw @a {"interpret":true,"nbt":"temp.desc[14]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 14 run tellraw @a {"interpret":true,"nbt":"temp.desc[13]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 13 run tellraw @a {"interpret":true,"nbt":"temp.desc[12]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 12 run tellraw @a {"interpret":true,"nbt":"temp.desc[11]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 11 run tellraw @a {"interpret":true,"nbt":"temp.desc[10]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 10 run tellraw @a {"interpret":true,"nbt":"temp.desc[9]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 9 run tellraw @a {"interpret":true,"nbt":"temp.desc[8]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 8 run tellraw @a {"interpret":true,"nbt":"temp.desc[7]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 7 run tellraw @a {"interpret":true,"nbt":"temp.desc[6]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 6 run tellraw @a {"interpret":true,"nbt":"temp.desc[5]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 5 run tellraw @a {"interpret":true,"nbt":"temp.desc[4]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 4 run tellraw @a {"interpret":true,"nbt":"temp.desc[3]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 3 run tellraw @a {"interpret":true,"nbt":"temp.desc[2]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 2 run tellraw @a {"interpret":true,"nbt":"temp.desc[1]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}
execute if score $desc _ matches 1 run tellraw @a {"interpret":true,"nbt":"temp.desc[0]","storage":"lang","clickEvent":{"action":"run_command","value":"/schedule function util:lang/read 1t"}}

# 説明省略
execute if score $desc _ matches 2.. if data storage play {description:false} run scoreboard players set $desc _ 2

# ループ
scoreboard players remove $desc _ 1
execute if score $desc _ matches 0.. run schedule function util:lang/read 4s
execute unless score $desc _ matches 0.. run function util:lang/return
