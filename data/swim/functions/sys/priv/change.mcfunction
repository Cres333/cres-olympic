# 各泳者の切り替え
## ゲームモードの切り替え
gamemode adventure @s

## PLAYに入れる
scoreboard players set @s PLAY 1

## クールダウンを0にする
scoreboard players set @s _COOL 0

## 槍をセット
give @s trident{HideFlags:1,Enchantments:[{id:"riptide",lvl:1}]}

## START表示
title @s title {"text":"!! START !!","color":"green"}
