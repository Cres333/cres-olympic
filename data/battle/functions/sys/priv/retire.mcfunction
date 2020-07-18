# リタイア
## ゲームモード変更
gamemode spectator @s

## アイテム削除
clear @s diamond_sword

## PLAYから抜ける
scoreboard players reset @s PLAY

## リスポーン地点にいる場合の戻し
tp @s 1059 52 -1346

## 脱落エフェクト
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10
execute at @s run particle minecraft:explosion ~ ~1 ~ 0.2 1 0.2 0.3 5
