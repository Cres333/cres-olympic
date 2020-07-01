# システム終了処理
## ループ処理をクリア
schedule clear util:count/loop
schedule clear fenc:sys/wait/count

## カウントダウン中だったら失敗表示
execute if score $util:count _ matches 0.. run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.count.attack"}

## 勝者を表示
execute unless score $util:count _ matches 0.. run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.win"}

## とりあえずクリア
clear @a
effect clear @a

## 勝者にはスコア追加
scoreboard players add @p[predicate=util:play] SCORE 10

## スペクテイターモードに変更
gamemode spectator @a

## 次のゲーム
function fenc:game/next
