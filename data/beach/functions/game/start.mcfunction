# ゲーム開始
## 初期化
scoreboard players set $round _ 0
scoreboard players set $phase _ 0

## 全員をプレイ状態に変更
scoreboard players set @a[predicate=util:join] PLAY 1

## 最初に得点を入れておく
scoreboard players add @a[predicate=util:play] SCORE 10

## 選手を選び出す
function beach:game/next
