# システム終了処理
## とりあえずクリア
clear @a
effect clear @a

## 勝者にはスコア追加
scoreboard players add @p[predicate=util:play] SCORE 10

## 次のゲーム
function fenc:game/next
