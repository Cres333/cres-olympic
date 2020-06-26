# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:fenc,join:2,team:false}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _GP dummy "グループ"
scoreboard objectives add _ATTACK custom:damage_dealt "ダメージを与えた"
scoreboard objectives add _DAMAGE custom:damage_taken "ダメージを受けた"

## Next: フィールド生成
function fenc:init/field
