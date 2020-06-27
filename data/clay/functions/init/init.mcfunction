# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:clay,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _KILL killed:pig "キルカウント"

## Next: フィールド生成
function clay:init/field
