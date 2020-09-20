# ゲーム終了処理
## 破棄
scoreboard objectives remove _NEXT

## 全員をTP
gamemode adventure @a
spreadplayers 1059 -1346 8 32 false @a

## ゲーム実行中フラグ
scoreboard players set $play LOGOUT 0

## 破棄
scoreboard objectives remove _MEDAL
scoreboard objectives remove _GOLD
scoreboard objectives remove _MOST
scoreboard objectives remove _SHOW_MEDAL
scoreboard objectives remove _SHOW_POINT

## 必要な分を初期化
function storage:settings/game
function storage:settings/score
function storage:settings/id
function core:init/score
function core:init/teams

clear @a
gamemode adventure @a

data modify storage play now set value ""

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.finish"}
