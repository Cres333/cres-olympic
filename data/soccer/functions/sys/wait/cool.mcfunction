# クールダウン処理
## 自陣のゴール付近にいたら10にする
execute positioned 1059 31 -1396 run scoreboard players set @a[scores={_COOL=11..,_B=1..},distance=..15] _COOL 10
execute positioned 1059 31 -1296 run scoreboard players set @a[scores={_COOL=11..,_W=1..},distance=..15] _COOL 10

## クールダウンの時間を下げる
scoreboard players remove @a[scores={_COOL=1..}] _COOL 1

## クールダウン中を表示する
title @a[scores={_COOL=1..}] actionbar {"interpret":true,"storage":"lang","nbt":"soccer.cooldown"}

## クールダウンが0ならLuckをかける
execute as @a[scores={_HAS=0,_COOL=0},predicate=!soccer:luck] run effect give @s luck 1000000 1 false
