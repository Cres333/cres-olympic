# クールダウン処理
## クールダウンの時間を下げる
scoreboard players remove @a[scores={_COOL=1..}] _COOL 1

## クールダウン中を表示する
title @a[scores={_COOL=1..}] actionbar {"text":":: 現在、ボールを持てません ::","color":"red"}

## クールダウンが0ならリードを手に入れる
clear @a[scores={_COOL=1..},predicate=soccer:has-lead] lead
execute as @a[scores={_COOL=0,_HAS=0},predicate=!soccer:has-lead] run give @s lead
