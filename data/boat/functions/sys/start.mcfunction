# システム開始処理
## 壁を消す
fill 1109 36 -1354 1091 40 -1346 air
fill 1109 36 -1346 1091 38 -1346 cyan_stained_glass

## スタートのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.start.all"}

function boat:sys/wait/loop
