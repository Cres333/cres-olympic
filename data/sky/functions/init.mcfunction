# 初期化
## ゲームモード設定
data merge storage main {game:sky,join:2,team:true,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _COLOR dummy "色"
scoreboard objectives add _SHOW dummy "スコア"

## チームに加える
team join r 赤チーム
team join b 青チーム
team join y 黄チーム
team join g 緑チーム

## bossbar 作成
bossbar add time "残り時間"
bossbar set time color white
bossbar set time style notched_6
bossbar set time players @a
bossbar set time visible false

## カラーを召喚
scoreboard players set $temp _ 1
function sky:sys/priv/summon
function sky:sys/wait/description

## 説明の呼び出し
data modify storage lang temp merge from storage lang sky
function util:lang/description
