# スコア/メダル計算
function util:score/point

# フィールド削除
# TODO: フィールド座標
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air

## スケジュールを削除
schedule clear dodge:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G

## 共通処理をリセット
function util:term/reset-common