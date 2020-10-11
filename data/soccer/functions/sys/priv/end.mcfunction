# 終了処理
## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモードを変更
gamemode spectator @a
kill @e[tag=ball]
kill @e[type=snowball]
clear @a snowball

## エフェクト削除
effect clear @a

## タイマーの表示を消す
bossbar set time visible false

## 各チームに得点を加算
### 同点
execute if score $w _ = $b _ run scoreboard players add @a[scores={_W=1..}] SCORE 20
execute if score $w _ = $b _ run scoreboard players add @a[scores={_B=1..}] SCORE 20
### 白勝利
execute if score $w _ > $b _ run scoreboard players add @a[scores={_W=1..}] SCORE 30
execute if score $w _ > $b _ run scoreboard players add @a[scores={_B=1..}] SCORE 10
### 黒勝利
execute if score $w _ < $b _ run scoreboard players add @a[scores={_W=1..}] SCORE 10
execute if score $w _ < $b _ run scoreboard players add @a[scores={_B=1..}] SCORE 30
### 更に点数追加
scoreboard players operation @a[scores={_W=1..}] SCORE += $w _
scoreboard players operation @a[scores={_B=1..}] SCORE += $b _

# 結果表示
title @a times 10 40 10
title @a subtitle {"color":"yellow","text":"= 結果 ="}
execute if data storage soccer {now:{w:red,b:blue}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rb"}
execute if data storage soccer {now:{w:red,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.ry"}
execute if data storage soccer {now:{w:red,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rg"}
execute if data storage soccer {now:{w:blue,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.by"}
execute if data storage soccer {now:{w:blue,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.bg"}
execute if data storage soccer {now:{w:yellow,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.yg"}

## 現在のチームを解体
scoreboard players reset * _W
scoreboard players reset * _B
scoreboard players reset * _HAS
scoreboard players reset * _COOL
scoreboard players reset * PLAY

## 次の試合
function soccer:game/next
