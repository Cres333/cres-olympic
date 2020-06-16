# ジャンプした時のエフェクト
execute as @e[predicate=util:play] run effect give @s jump_boost 10 2 true

# ボールの動き
execute unless score $stop _ matches 1 run function soccer:sys/loop

# ゲーム終了
execute if score $time _ matches ..0 run function soccer:game/next

# ループ
execute unless score $time _ matches ..0 run schedule function soccer:sys/main 1t
