# 初期化
## ゲームモード設定
data merge storage main {game:fenc,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _GP dummy "グループ"
scoreboard objectives add _LOSER dummy "敗者"
scoreboard objectives add _ATTACK custom:damage_dealt "ダメージを与えた"
scoreboard objectives add _DAMAGE custom:damage_taken "ダメージを受けた"

## フィールド生成
clone 54 42 0 60 65 44 1056 32 -1368 masked normal

## 時間変更
time set 22000

## 一時的にfriendly fireを有効化
team modify r friendlyFire true
team modify b friendlyFire true
team modify y friendlyFire true
team modify g friendlyFire true

## 説明の呼び出し
data modify storage lang temp merge from storage lang fenc
function util:lang/description
