# 各泳者の切り替え
## ゲームモードの切り替え
gamemode adventure @s

## PLAYに入れる
scoreboard players set @s PLAY 1

## クールダウンを0にする
scoreboard players set @s _COOL 0

## 槍をセット
give @s trident{HideFlags:63,Enchantments:[{id:"riptide",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:1,UUID:[I;1340787862,378685630,-2065001653,-2069322458]}]}

## START表示
title @s title {"text":"!! START !!","color":"green"}

## スコアに現在時間をマイナスで入れる
scoreboard players operation @s SCORE -= $time _
