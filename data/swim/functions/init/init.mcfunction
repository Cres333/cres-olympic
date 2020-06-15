# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:swim,join:4,team:true}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"
scoreboard objectives add _USE used:trident "トライデントの利用フラグ"
scoreboard objectives add _COOL dummy "クールダウンの時間"

## scoreboard 初期値設定
scoreboard players reset * SCORE
scoreboard players reset * _

## Next: フィールド生成
function swim:init/field
