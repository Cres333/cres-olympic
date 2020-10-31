## 確定メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.select.complete"}

## リセット
data remove storage play show

## 表示
data modify storage play show set from storage play games[0].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[1].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[2].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[3].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[4].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[5].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[6].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[7].type
function core:setting/priv/show-message
data modify storage play show set from storage play games[8].type
function core:setting/priv/show-message

scoreboard objectives add _SERVER_LIST dummy
execute as @a run scoreboard players add $num _SERVER_LIST 1
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.select.num"}
scoreboard objectives remove _SERVER_LIST
