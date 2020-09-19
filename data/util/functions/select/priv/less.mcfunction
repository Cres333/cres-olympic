# 人数が少ない場合
## メッセージを表示
execute if score $team _TICKET matches 1 run tellraw @a[team=r] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 2 run tellraw @a[team=b] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 3 run tellraw @a[team=y] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 4 run tellraw @a[team=g] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}

## spectatorモードのプレイヤーを強制移動
execute if score $team _TICKET matches 1 run tp @a[gamemode=spectator,team=r] 1004 31 -1468 90 0
execute if score $team _TICKET matches 2 run tp @a[gamemode=spectator,team=b] 1114 31 -1224 -90 0
execute if score $team _TICKET matches 3 run tp @a[gamemode=spectator,team=y] 1131 31 -1451 180 0
execute if score $team _TICKET matches 4 run tp @a[gamemode=spectator,team=g] 987 31 -1241 0 0

execute if score $team _TICKET matches 1 run clear @a[gamemode=spectator,team=r]
execute if score $team _TICKET matches 2 run clear @a[gamemode=spectator,team=b]
execute if score $team _TICKET matches 3 run clear @a[gamemode=spectator,team=y]
execute if score $team _TICKET matches 4 run clear @a[gamemode=spectator,team=g]

execute if score $team _TICKET matches 1 run give @a[gamemode=spectator,team=r] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
execute if score $team _TICKET matches 2 run give @a[gamemode=spectator,team=b] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
execute if score $team _TICKET matches 3 run give @a[gamemode=spectator,team=y] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
execute if score $team _TICKET matches 4 run give @a[gamemode=spectator,team=g] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}

execute if score $team _TICKET matches 1 run gamemode adventure @a[gamemode=spectator,team=r]
execute if score $team _TICKET matches 2 run gamemode adventure @a[gamemode=spectator,team=b]
execute if score $team _TICKET matches 3 run gamemode adventure @a[gamemode=spectator,team=y]
execute if score $team _TICKET matches 4 run gamemode adventure @a[gamemode=spectator,team=g]
