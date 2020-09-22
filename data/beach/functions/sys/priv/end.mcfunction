# システム終了処理
## 勝者を表示
tellraw @a {"interpret":true,"storage":"lang","nbt":"beach.win"}

## とりあえずクリア
clear @a white_banner
kill @e[type=item]
effect clear @a

## 対象から消す
scoreboard players reset @a[predicate=util:play,scores={_PLACE=0}] PLAY

## 勝者にはスコア追加
execute if score $round _ matches 1 run scoreboard players add @a[predicate=util:play] SCORE 10
execute if score $round _ matches 2 run scoreboard players add @a[predicate=util:play] SCORE 20
execute if score $round _ matches 3 run scoreboard players add @a[predicate=util:play] SCORE 30
execute if score $round _ matches 4 run scoreboard players add @a[predicate=util:play] SCORE 40

## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## スペクテイターモードに変更
gamemode spectator @a

## 次のゲーム
function beach:game/next
