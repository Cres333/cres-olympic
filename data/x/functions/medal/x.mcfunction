# メダル計算用のスコアボードを用意
scoreboard objectives add _MEDAL dummy
scoreboard objectives add _G dummy "金"
scoreboard objectives add _S dummy "銀"
scoreboard objectives add _B dummy "銅"

# 金メダル獲得判定
function x:medal/check
execute as @a[scores={_MEDAL=1}] run scoreboard players operation @s _G = @s _MEDAL
scoreboard players reset * _MEDAL

# 銀メダル獲得判定
## メダルの合計数をまずはチェック
scoreboard players operation $sum _MEDAL += @a _G
## メダルの合計数が2つ以下なら銀メダルを与える
execute if score $sum _MEDAL matches ..2 if entity @p[scores={SCORE=0..}] run function x:medal/check
execute as @a[scores={_MEDAL=1}] run scoreboard players operation @s _S = @s _MEDAL
scoreboard players reset * _MEDAL

# 銅メダル獲得判定
## メダルの合計数をまずはチェック
scoreboard players operation $sum _MEDAL += @a _G
scoreboard players operation $sum _MEDAL += @a _S
## メダルの合計数が2つ以下なら銅メダルを与える
execute if score $sum _MEDAL matches ..2 run function x:medal/check
execute as @a[scores={_MEDAL=1}] run scoreboard players operation @s _B = @s _MEDAL
scoreboard players reset * _MEDAL

# ストレージに保存
execute if data storage main {mode:multi} run function x:medal/mode/multi
execute if data storage main {mode:single} run function x:medal/mode/single

# スコアボードを破棄
scoreboard objectives remove _MEDAL
scoreboard objectives remove _G
scoreboard objectives remove _S
scoreboard objectives remove _B
