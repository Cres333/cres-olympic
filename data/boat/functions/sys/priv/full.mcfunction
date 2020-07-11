#周回チェック(一周)
## 半周ごとにプレゼント
give @s[predicate=util:play,scores={_ROUND=2}] tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 2

scoreboard players set @s[predicate=util:play,scores={_ROUND=2}] _ROUND 3
scoreboard players set @s[predicate=util:play,scores={_ROUND=4}] _ROUND 5

## 一周して壁がまだあったら、壁を消す
execute unless block 1109 36 -1346 air if entity @s[predicate=util:play,scores={_ROUND=3}] run fill 1109 36 -1346 1091 38 -1346 air

## 二周したらゴール
execute if entity @s[predicate=util:play,scores={_ROUND=5}] run function boat:sys/priv/goal
