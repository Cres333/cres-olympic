# ジャンプした時のエフェクト
execute as @e[predicate=util:play] run effect give @s jump_boost 10 2 true

# ボールの動き
execute unless score $stop _ matches 1 run function soccer:system/loop
