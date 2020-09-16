# 各走者の切り替え
## ゲームモードの切り替え
gamemode adventure @s

## PLAYに入れる
scoreboard players set @s PLAY 1

## サイドバーに追加する
scoreboard players set @s[predicate=relay:2] _LIST 2
scoreboard players set @s[predicate=relay:3] _LIST 3
scoreboard players set @s[predicate=relay:4] _LIST 4

## START表示
title @s title {"text":"!! START !!","color":"green"}

## スタートのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.start.change"}

## 現在のタイムをマイナス値として入れる
scoreboard players operation @s SCORE -= $time _
