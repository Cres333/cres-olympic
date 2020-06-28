# ゲーム終了処理
## 必要な分を初期化
function storage:settings/game
function storage:settings/score
function core:init/score
function core:init/teams

## メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"core.term.finish"}
