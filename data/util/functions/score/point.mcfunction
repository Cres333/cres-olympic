# ポイント計算
## 初期化
scoreboard players set $base SCORE 0
execute as @a[predicate=util:join] run scoreboard players add $base SCORE 10000

## スコアが時間計算の場合はスコアの内容を逆転させる
execute if data storage main {score:time} run function util:score/priv/turn-score

## 最低限参加者には10をプレゼント
scoreboard players add @a[predicate=util:join] SCORE 10

## 全員の合計ポイントを求める
scoreboard players set $sum SCORE 0
scoreboard players operation $sum SCORE += @a[predicate=util:join] SCORE

## 合計ポイントを元にスコアを配分
scoreboard players operation $base SCORE /= $sum SCORE
scoreboard players operation @a[predicate=util:join] SCORE *= $base SCORE

## 配分したスコアをアマスタにコピー
execute as @a[predicate=util:join] run function storage:register/point

## メダル計算
function util:score/medal

## 破棄
scoreboard players reset * SCORE
