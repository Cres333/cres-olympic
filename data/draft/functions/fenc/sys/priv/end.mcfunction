# システム終了処理
## リセット
scoreboard players reset * _LOSER
scoreboard players reset * _DAMAGE
scoreboard players reset * _ATTACK

## とりあえずクリア
clear @a iron_sword
effect clear @a

## ゲームモード変更エフェクト
execute as @p[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## スペクテイターモードに変更
gamemode spectator @a

scoreboard players reset * PLAY

## メッセージ
tellraw @a {"color":"yellow","text":"[下見] ランダムに次の選手を選びます"}

## 次のゲーム
schedule function draft:fenc/sys/main 1s
