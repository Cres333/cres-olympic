# 開始
## 説明用のスケジュールを消す
scoreboard players set $temp _ 0
schedule clear sky:sys/wait/descirption

## 次の競技へ行くかチェック
function draft:util/next/wait

## 開始
function draft:sky/sys/main
