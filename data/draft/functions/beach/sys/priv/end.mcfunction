# システム終了処理
## とりあえずクリア
clear @a white_banner
kill @e[type=item]
effect clear @a

## 対象から消す
scoreboard players reset * PLAY

## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## スペクテイターモードに変更
gamemode spectator @a

## 次のゲーム
schedule function draft:beach/sys/main 3s
