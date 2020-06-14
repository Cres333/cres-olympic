# 初期化
## ゲームモード設定
data merge storage main {game:swim,join:4,team:true}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"

## scoreboard 初期値設定
scoreboard players reset * SCORE
scoreboard players reset * _

## Next: フィールド生成
function swim:init/field
