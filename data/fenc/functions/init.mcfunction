# 初期化
## ゲームモード設定
data merge storage main {game:fenc,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _GP dummy "グループ"
scoreboard objectives add _ATTACK custom:damage_dealt "ダメージを与えた"
scoreboard objectives add _DAMAGE custom:damage_taken "ダメージを受けた"

## フィールド生成
clone 0 146 0 6 149 44 1056 32 -1368

## 説明の呼び出し
data modify storage lang temp merge from storage lange fenc
function util:lang/description
