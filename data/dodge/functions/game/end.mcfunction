# ゲーム終了
## スケジュールを停止
schedule clear dodge:sys/wait/loop

## アイテム削除
clear @a

## アマスタ削除
kill @e[tag=ball]

## 最後まで残っていたプレイヤーにスコア加算
scoreboard players operation @a[predicate=util:play] SCORE = $time _

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
function dodge:term
