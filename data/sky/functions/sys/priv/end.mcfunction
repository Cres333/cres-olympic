# 終了処理
## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## 最終スコアの計算
scoreboard players set 赤チーム _SHOW 0
scoreboard players set 青チーム _SHOW 0
scoreboard players set 黄チーム _SHOW 0
scoreboard players set 緑チーム _SHOW 0
execute as @e[tag=color,scores={_COLOR=1}] run scoreboard players add 赤チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=2}] run scoreboard players add 青チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=3}] run scoreboard players add 黄チーム _SHOW 1
execute as @e[tag=color,scores={_COLOR=4}] run scoreboard players add 緑チーム _SHOW 1

## ゲームモードを変更
gamemode spectator @a
kill @e[tag=color]
clear @a firework_rocket
clear @a elytra

## エフェクト削除
effect clear @a

## タイマーの表示を消す
bossbar set time visible false

## 各チームに得点を加算
scoreboard players operation @a[team=r,predicate=util:play] SCORE = 赤チーム _SHOW
scoreboard players operation @a[team=b,predicate=util:play] SCORE = 青チーム _SHOW
scoreboard players operation @a[team=y,predicate=util:play] SCORE = 黄チーム _SHOW
scoreboard players operation @a[team=g,predicate=util:play] SCORE = 緑チーム _SHOW

scoreboard players reset * PLAY

## 結果表示
execute store result score $teamNum _ run data get storage main teamNum
execute if score $teamNum _ matches 2 run tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.result.two"}
execute if score $teamNum _ matches 3 run tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.result.three"}
execute if score $teamNum _ matches 4 run tellraw @a {"interpret":true,"storage":"lang","nbt":"sky.result.four"}

## 次の試合
function sky:game/next
