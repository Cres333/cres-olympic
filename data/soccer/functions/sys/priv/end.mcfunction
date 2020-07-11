# 終了処理
## ゲームモードを変更
gamemode spectator @a
kill @e[tag=ball]
kill @e[type=snowball]
clear @a

## エフェクト削除
effect clear @a

## タイマーの表示を消す
bossbar set time visible false

## 各チームに得点を加算
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
