# 初期化
## ゲームモード設定
data merge storage main {game:sky}

## スコア設定
scoreboard objectives add _COLOR dummy "色"
scoreboard objectives add _SHOW dummy "スコア"

## チームに加える
team join r 赤チーム
team join b 青チーム
team join y 黄チーム
team join g 緑チーム

## カラーを召喚
scoreboard players set $temp _ 1
function sky:sys/priv/summon
function sky:sys/wait/description

## 説明の呼び出し
data modify storage lang temp merge from storage lang sky
function util:lang/description
