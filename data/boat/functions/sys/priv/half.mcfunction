#周回チェック(半周)
## 半周ごとにプレゼント
give @s[scores={_ROUND=1}] tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 4
give @s[scores={_ROUND=3}] tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 4

scoreboard players set @s[scores={_ROUND=1}] _ROUND 2
scoreboard players set @s[scores={_ROUND=3}] _ROUND 4
