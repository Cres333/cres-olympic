# 3秒前
execute if score $count _ matches 3 run give @a[predicate=util:play] minecraft:carrot_on_a_stick

# 0秒前
execute if score $count _ matches 0 run function weight:game/play/update_random_value
execute if score $count _ matches 0 run title @a subtitle [{"score":{"name":"$value","objective":"_CLICK"}},{"text":"回、右クリックを連打しろ！"}]
execute if score $count _ matches 0 run title @a title {"text":"始め！","color":"red"}

# カウントダウン
execute if score $count _ matches 1.. run title @a title {"score":{"name":"$count","objective":"_"},"color":"red"}
scoreboard players remove $count _ 1

# ループ
execute if score $count _ matches 0.. run schedule function weight:game/play/x 1s
execute unless score $count _ matches 0.. run schedule function weight:game/play/end 10s
