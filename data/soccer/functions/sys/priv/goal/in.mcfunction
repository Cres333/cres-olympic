# ループ処理の停止
scoreboard players set $stop _ 1

# エフェクトを削除
effect clear @a

# ボールを爆発
execute as @e[tag=ball] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Flicker:1,Colors:[I;11743532],FadeColors:[I;14602026]}],Flight:1}}}}

# ボールを削除
kill @e[type=snowball]
clear @a snowball
clear @a lead

# ゴールした時のタイトル表示
title @a times 10 40 10
title @a subtitle {"color":"yellow","text":"GOAL!!!"}
execute if data storage soccer {now:{w:red,b:blue}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rb"}
execute if data storage soccer {now:{w:red,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.ry"}
execute if data storage soccer {now:{w:red,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rg"}
execute if data storage soccer {now:{w:blue,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.by"}
execute if data storage soccer {now:{w:blue,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.bg"}
execute if data storage soccer {now:{w:yellow,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.yg"}

# クールダウンを設定
scoreboard players set @a[predicate=util:play] _COOL 0
execute if score $isW _ matches 1 run scoreboard players set @a[scores={_B=1..}] _COOL 60
execute if score $isB _ matches 1 run scoreboard players set @a[scores={_W=1..}] _COOL 60

# ポジションリセット
function soccer:sys/priv/setting-position

# ボールを中央に戻す
scoreboard players set $cornor _ 1
function soccer:sys/priv/cornor
scoreboard players reset $cornor _

# ループ処理の再開
scoreboard players set $stop _ 0
