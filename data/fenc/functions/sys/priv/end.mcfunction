# システム終了処理
## カウントダウン中だったら失敗表示
execute if score $util:count _ matches 0.. run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.count.attack"}

## 勝者を表示
execute unless score $util:count _ matches 0.. run tellraw @a {"interpret":true,"storage":"lang","nbt":"fenc.win"}

## リセット
scoreboard players reset * _LOSER

## とりあえずクリア
clear @a iron_sword
effect clear @a

## 勝者にはスコア追加
execute if score $round _ matches 1 run scoreboard players add @p[predicate=util:play] SCORE 5
execute if score $round _ matches 2 unless score $gp _ matches 3 run scoreboard players add @p[predicate=util:play] SCORE 5
execute if score $round _ matches 2 if score $gp _ matches 3 run scoreboard players add @p[predicate=util:play] SCORE 3
execute if score $round _ matches 2 if score $gp _ matches 3 run scoreboard players reset @p[predicate=util:play] _GP
execute if score $round _ matches 3 run scoreboard players add @p[predicate=util:play] SCORE 3

## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## スペクテイターモードに変更
gamemode spectator @a

## 次のゲーム
function fenc:game/next
