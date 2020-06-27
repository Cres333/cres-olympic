# ゴール処理
scoreboard players operation $temp _ = @s _ID

# 同一ID (同じチーム)のメンバーも一緒に対応する
execute as @a[predicate=util:play] if score @s _ID = $temp _ run gamemode spectator @s
execute as @a[predicate=util:play] if score @s _ID = $temp _ run clear @s
execute as @a[predicate=util:play] if score @s _ID = $temp _ run scoreboard players operation @s SCORE = $time _
execute as @a[predicate=util:play] if score @s _ID = $temp _ run scoreboard players reset @s PLAY
