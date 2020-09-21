# クールダウン処理
## クールダウンを減らす
scoreboard players remove $cool _ 1
execute if score $cool _ matches ..0 run give @a[predicate=util:play] firework_rocket
execute if score $cool _ matches ..0 run scoreboard players set $cool _ 100
