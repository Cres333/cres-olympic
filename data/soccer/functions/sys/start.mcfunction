# 開始
## ボール召喚
summon husk 1058 60 -1345 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,IsBaby:0b,Tags:["ball"],ArmorItems:[{},{},{},{id:"minecraft:birch_wood",Count:1b}],Attributes:[{Name:"generic.knockback_resistance",Base:1.0}]}
effect give @e[tag=ball] minecraft:invisibility 1000000 1 true

## 初期状態を設定
effect give @a[predicate=util:play] jump_boost 1000000 2 true

effect clear @a[predicate=util:play] luck
scoreboard players set @a[predicate=util:play] _COOL 0
effect give @a[predicate=util:play] luck 1000000 1 false

effect clear @a[predicate=util:play] speed
scoreboard players set @a[predicate=util:play] _HAS 0
effect give @a[predicate=util:play] speed 1000000 3 true

## ボールを中央に召喚
scoreboard players set $cornor _ 1
function soccer:sys/priv/cornor
scoreboard players reset $cornor _

## 各waitを作動
function soccer:sys/wait/loop
