# ゲーム開始
## 説明用のスケジュールを消す
scoreboard players set $temp _ 0
schedule clear sky:sys/wait/descirption

## 背番号を設定
function sky:game/priv/setting-number

## 選手を2人選び出す
function sky:game/next
