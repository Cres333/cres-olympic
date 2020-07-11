#周回チェック(一周)
## 半周ごとにプレゼント
give @s[scores={_ROUND=2}] tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 2

## 一周目のメッセージ
execute if data storage main {mode:single} if entity @s run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.single"}
execute if data storage main {mode:multi} if entity @s[team=r,scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.r"}
execute if data storage main {mode:multi} if entity @s[team=b,scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.b"}
execute if data storage main {mode:multi} if entity @s[team=y,scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.y"}
execute if data storage main {mode:multi} if entity @s[team=g,scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.g"}

scoreboard players set @s[scores={_ROUND=2}] _ROUND 3
scoreboard players set @s[scores={_ROUND=4}] _ROUND 5

## 一周して壁がまだあったら、壁を消す
execute unless block 1109 36 -1346 air if entity @s[scores={_ROUND=3}] run fill 1109 36 -1346 1091 38 -1346 air

## 二周したらゴール
execute if entity @s[scores={_ROUND=5}] run function boat:sys/priv/goal
