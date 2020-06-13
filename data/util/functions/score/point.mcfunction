# ポイント計算
## 初期化
scoreboard players set $base SCORE 10000

## 最低限参加者には1をプレゼント
scoreboard players add @a[predicate=util:join] SCORE 1

## 全員の合計ポイントを求める
scoreboard players set $sum SCORE 0
scoreboard players operation $sum SCORE += @a[predicate=util:join] SCORE

## 合計ポイントを元にスコアを配分
scoreboard players operation $base SCORE /= $sum SCORE
scoreboard players operation @a[predicate=util:join] SCORE *= $base SCORE

## 配分したスコアをアマスタにコピー
function util:score/priv/setting-point

## 破棄
scoreboard players reset $base SCORE
scoreboard players reset $sum SCORE
