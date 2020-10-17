# システム終了処理
## とりあえずクリア
clear @a white_banner
kill @e[type=item]
effect clear @a

## 対象から消す
scoreboard players reset @a[predicate=util:play,scores={_PLACE=0}] PLAY

## 勝者を表示
tellraw @a {"interpret":true,"storage":"lang","nbt":"beach.win"}

## 勝者にはスコア追加
scoreboard players add @a[predicate=util:play] SCORE 3

## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## スペクテイターモードに変更
gamemode spectator @a

## 次のゲーム
schedule function beach:game/next 3s
