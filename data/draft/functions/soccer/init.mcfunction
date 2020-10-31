## ゲームモード設定
data merge storage main {game:soccer}

## scoreboard 作成
scoreboard objectives add _HAS dummy "ボールを持っているプレイヤー"
scoreboard objectives add _COOL dummy "各プレイヤーのクールダウン"

bossbar add cool {"text":":: 現在、ボールを奪えません ::","bold":true,"color":"dark_red"}
bossbar set cool color red
bossbar set cool style progress
bossbar set cool visible true
bossbar set cool max 1
bossbar set cool value 1

## フィールド生成
clone 0 16 0 69 22 57 1025 32 -1403 masked normal
clone 0 29 0 68 35 56 1025 32 -1345 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang soccer
function util:lang/description
