# クールダウン処理
## クールダウンの時間を下げる
scoreboard players remove @a[scores={_COOL=1..}] _COOL 1

## クールダウン中を表示する
title @a[scores={_COOL=1..}] actionbar {"text":":: 現在、ボールを奪えません ::","color":"red"}

## クールダウンが0ならLuckをかける
execute as @a[scores={_COOL=0},predicate=!soccer:luck] run effect give @s luck 1000000 1 false
