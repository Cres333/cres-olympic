# ループ処理の停止
scoreboard players set $stop _ 1

# エフェクトを削除
effect clear @a

# ボールを削除
kill @e[type=snowball]
clear @a

# ゴールした時のタイトル表示
title @a subtitle {"color":"yellow","text":"GOAL!!!"}
title @a title {"color":"red","translate":"%s - %s","with":[{"score":{"name":"$w","objective":"_"}},{"score":{"name":"$b","objective":"_"}}]}

# クールダウンを設定
scoreboard players set @a[predicate=util:play] _COOL 0
execute if score $isW _ matches 1 run scoreboard players set @a[scores={_B=1..}] _COOL 60
execute if score $isB _ matches 1 run scoreboard players set @a[scores={_W=1..}] _COOL 60

# ポジションリセット
function soccer:system/position/reset

# ボールを中央に戻す
scoreboard players set $cornor _ 1
function soccer:system/cornor/out
scoreboard players reset $cornor _

# ループ処理の再開
scoreboard players set $stop _ 0
