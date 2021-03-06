# 結果表示
## チームの個人戦の場合、金n個、銀n個、銅n個のメダルを獲得しましたを各チームに表示

## 赤チーム
scoreboard players set $a _MEDAL 0
scoreboard players set $b _MEDAL 0
scoreboard players set $c _MEDAL 0
execute as @a[team=r,scores={_MEDAL=1}] run scoreboard players add $a _MEDAL 1
execute as @a[team=r,scores={_MEDAL=2}] run scoreboard players add $b _MEDAL 1
execute as @a[team=r,scores={_MEDAL=3}] run scoreboard players add $c _MEDAL 1
tellraw @a[team=r] {"interpret":true,"storage":"lang","nbt":"util.score.medal"}

## 青チーム
scoreboard players set $a _MEDAL 0
scoreboard players set $b _MEDAL 0
scoreboard players set $c _MEDAL 0
execute as @a[team=b,scores={_MEDAL=1}] run scoreboard players add $a _MEDAL 1
execute as @a[team=b,scores={_MEDAL=2}] run scoreboard players add $b _MEDAL 1
execute as @a[team=b,scores={_MEDAL=3}] run scoreboard players add $c _MEDAL 1
tellraw @a[team=b] {"interpret":true,"storage":"lang","nbt":"util.score.medal"}

## 黄チーム
scoreboard players set $a _MEDAL 0
scoreboard players set $b _MEDAL 0
scoreboard players set $c _MEDAL 0
execute as @a[team=y,scores={_MEDAL=1}] run scoreboard players add $a _MEDAL 1
execute as @a[team=y,scores={_MEDAL=2}] run scoreboard players add $b _MEDAL 1
execute as @a[team=y,scores={_MEDAL=3}] run scoreboard players add $c _MEDAL 1
tellraw @a[team=y] {"interpret":true,"storage":"lang","nbt":"util.score.medal"}

## 緑チーム
scoreboard players set $a _MEDAL 0
scoreboard players set $b _MEDAL 0
scoreboard players set $c _MEDAL 0
execute as @a[team=g,scores={_MEDAL=1}] run scoreboard players add $a _MEDAL 1
execute as @a[team=g,scores={_MEDAL=2}] run scoreboard players add $b _MEDAL 1
execute as @a[team=g,scores={_MEDAL=3}] run scoreboard players add $c _MEDAL 1
tellraw @a[team=g] {"interpret":true,"storage":"lang","nbt":"util.score.medal"}
