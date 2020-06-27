# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:soccer,join:4,team:true,score:point}

## scoreboard 作成
scoreboard objectives add _HAS dummy "ボールを持っているプレイヤー"
scoreboard objectives add _COOL dummy "各プレイヤーのクールダウン"
scoreboard objectives add _W dummy "白チームの背番号"
scoreboard objectives add _B dummy "黒チームの背番号"

## bossbar 作成
bossbar add time "残り時間"
bossbar set time color white
bossbar set time style notched_6
bossbar set time players @a
bossbar set time visible false

## storage 作成
data merge storage soccer {battle:[]}

## フィールド生成
## TODO: フィールド座標
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0

## 説明の呼び出し
data modify storage lang temp merge from storage lange soccer
function util:lang/description
