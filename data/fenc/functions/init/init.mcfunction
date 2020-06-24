# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:fenc,join:2,team:false}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _GP dummy "グループ"

## Next: フィールド生成
function fenc:init/field
