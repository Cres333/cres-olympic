# 参加した人には最低でも点数を加算
scoreboard players add @a[scores={JOIN=0..}] SCORE 1

# 全員の得点合計値算出
scoreboard players set $sum SCORE 0
scoreboard players operation $sum SCORE += @a[scores={SCORE=0..}] SCORE

# 10000点を合計値で割る (SCORE 1につきnポイント計算にする)
execute store result score $full SCORE run data get storage const score
scoreboard players operation $full SCORE /= $sum SCORE
scoreboard players operation $per SCORE = $full SCORE

# 得点化する
execute as @a[scores={SCORE=0..}] run scoreboard players operation @s SCORE *= $per SCORE

# ストレージに保存
execute if data storage main {mode:multi} run function x:point/mode/multi
execute if data storage main {mode:single} run function x:point/mode/single
execute if data storage main {mode:only} run function x:point/mode/only

# メダル処理
function x:medal/x

# スコアボードの破棄
scoreboard players reset * SCORE
