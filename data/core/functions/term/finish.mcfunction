# ゲーム終了処理
## 破棄
scoreboard objectives remove _MEDAL
scoreboard objectives remove _GOLD
scoreboard objectives remove _MOST

## 必要な分を初期化
function storage:settings/game
function storage:settings/score
function storage:settings/id
function core:init/score
function core:init/teams

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.finish"}
