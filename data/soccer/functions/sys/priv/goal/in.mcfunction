# ボールを爆発
execute as @e[tag=ball] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Flicker:1,Colors:[I;11743532],FadeColors:[I;14602026]}],Flight:1}}}}

# ボールを削除
kill @e[type=snowball]
clear @a snowball

# ゴールした時のタイトル表示
title @a times 10 40 10
title @a subtitle {"color":"yellow","text":"GOAL!!!"}
execute if data storage soccer {now:{w:red,b:blue}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rb"}
execute if data storage soccer {now:{w:red,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.ry"}
execute if data storage soccer {now:{w:red,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.rg"}
execute if data storage soccer {now:{w:blue,b:yellow}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.by"}
execute if data storage soccer {now:{w:blue,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.bg"}
execute if data storage soccer {now:{w:yellow,b:green}} run title @a title {"interpret":true,"storage":"lang","nbt":"soccer.goal.yg"}

# 状態を設定
effect clear @a[predicate=util:play] luck
scoreboard players set @a[predicate=util:play] _COOL 0
effect give @a[predicate=util:play] luck 1000000 1 false

effect clear @a[predicate=util:play] glowing
effect clear @a[predicate=util:play] speed
scoreboard players set @a[predicate=util:play] _HAS 0
effect give @a[predicate=util:play] speed 1000000 3 true

# ポジションリセット
function soccer:sys/priv/setting-position

# 念の為リセット
advancement revoke @a only event:soccer/drop

# ボールを再召喚
scoreboard players set $cornor _ 1
execute if score $isW _ matches 1 run scoreboard players set $cornor _ 2
execute if score $isB _ matches 1 run scoreboard players set $cornor _ 3
function soccer:sys/priv/cornor
scoreboard players reset $cornor _

# ボールを選手の前にTP
execute if score $isW _ matches 1 as @e[type=snowball] at @r[scores={_B=1..3},limit=1] run tp @s ~ ~1 ~3
execute if score $isB _ matches 1 as @e[type=snowball] at @r[scores={_W=1..3},limit=1] run tp @s ~ ~1 ~-3
