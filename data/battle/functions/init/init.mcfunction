# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:battle,join:0,team:true}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"
scoreboard objectives add _DEATH deathCount "死亡判定"
scoreboard objectives add _LOG custom:leave_game "ログアウト判定"

## Next: フィールド生成
function battle:init/field
